#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""
#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""
Finally I got in xyz coordinates according to ROS
"""


import sys
sys.path.insert(0, '/home/sinchiguano/yumi_depends_ws/src/yumi_main/scripts/project')
from thesis_library import *



euler_angles_=[0,0,0]
position_=[0.0,0.0,0.0]

##convert a rot and trans matrix to a 4x4 matrix
def data_to_transform(r_matrix,t_position):
    mat =np.hstack((r_matrix,t_position))
    mat=np.vstack((mat,[0.0,0.0,0.0,1.0]))
    return mat

#convert a 4x4 matrix to a Pose message
def transform_to_pose(mat):
    pose = Pose()
    pose.position.x = mat[0,3]
    pose.position.y = mat[1,3]
    pose.position.z = mat[2,3]
    quat = tf.transformations.quaternion_from_matrix(mat)
    pose.orientation.x = quat[0]
    pose.orientation.y = quat[1]
    pose.orientation.z = quat[2]
    pose.orientation.w = quat[3]
    return pose

def pose_camera_callback(msg):

    global euler_angles_
    global position_

    position_=[msg.position.x,msg.position.y,msg.position.z]
    quaternion_=msg.orientation

    quaternion_tmp=[quaternion_.x,quaternion_.y,quaternion_.z,quaternion_.w]
    roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(quaternion_tmp)
    euler_angles_=[roll_,pitch_,yaw_]


def print_information(rotation_vector,translation_vector,rvec_matrix):


    global euler_angles
    print("\n\nThe world coordinate systems origin in-->> camera's coordinate system:")
    print("===rotation_vector:")
    print(rotation_vector)
    print("===rotation_matrix:")
    print(rvec_matrix)
    print("===translation_vector:")
    print(translation_vector)

    matr =np.hstack((rvec_matrix,translation_vector))
    matr=np.vstack((matr,[0.0,0.0,0.0,1.0]))

    quat_tmp = tf.transformations.quaternion_from_matrix(matr)
    roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(quat_tmp)
    euler_angles_tmp=[roll_,pitch_,yaw_]
    print("euler_angles_tmp: ",euler_angles_tmp)
    import math
    print(roll_* 180 / math.pi,pitch_* 180 / math.pi,yaw_* 180 / math.pi)

    print("\n\nThe camera origin in -->>world coordinate system:")
    print("===camera rvec_matrix:")
    print(rvec_matrix.T)
    print("===camera translation_vector:")
    print(-np.dot(rvec_matrix.T, translation_vector))
    print('euler_angles inv roll_,pitch_,yaw:  \n',euler_angles_)
    print(euler_angles_[0]* 180 / math.pi,euler_angles_[1]* 180 / math.pi,euler_angles_[2]* 180 / math.pi)


    print('\n\n-----------------------------------------------------')

def draw_show_on_image(frame,axi_imgpts,corners,ret,reprojection_imgpts,line_width=2):

    print(corners.shape)
    print(type(corners))
    print(reprojection_imgpts.shape)
    print(type(reprojection_imgpts))
    aux_reprojection=reprojection_imgpts.reshape(-1,2)
    print(aux_reprojection.shape)
    euclidean_distances=np.sqrt(np.sum((corners-aux_reprojection)**2))

    print('euclidean distance: \n',euclidean_distances)
    #print(np.square(corners -aux_reprojection).mean(axis=0))
    #print(np.sqrt(np.sum((corners-aux_reprojection)**2).mean()))




    # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
    cv2.drawChessboardCorners(frame, (7,9), reprojection_imgpts, ret)#column and rows 7x9 after the calibration i do not need anymore
    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x


    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x

    cv2.imshow('projection',frame)

    # frame1=copy.deepcopy(frame)
    # # for idx, corner in enumerate(corners):
    # #     idx_as_str = '{}'.format(idx)
    # #     text_pos = (corner + np.array([3.5,-7])).astype(int)
    # #     cv2.putText(frame, idx_as_str, tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))
    #
    # # Display the resulting frame
    # cv2.drawChessboardCorners(frame1, (7,9), reprojection_imgpts, ret)
    # cv2.line(frame1, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    # cv2.line(frame1, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    # cv2.line(frame1, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x
    #
    #
    # cv2.line(frame1, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    # cv2.line(frame1, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    # cv2.line(frame1, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x
    # cv2.imshow('reprojection',frame1)
    cv2.imwrite('test.jpg', frame)



def locate_target_orientation(frame,ret, corners):

    # 3D world points.
    x,y=np.meshgrid(range(7),range(9))#col row
    world_points_3d=np.hstack((y.reshape(63,1)*0.020,x.reshape(63,1)*0.020,np.zeros((63,1)))).astype(np.float32)

    # Camera internals
    #Intrinsic parameters===>>> from the intrinsic calibration!!!!
    list_matrix=[529.3652640113527, 0, 310.3141830332983, 0, 540.6164768242445, 220.3657848482968, 0, 0, 1]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)


    distCoef=[0.1852661379687586, -0.264551739977949, -0.03684812841833995, 0.0009882520270208214, 0]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)
    # print(distCoef_ar)
    # print(distCoef_ar.shape)

    #Rotation vector (radians)
    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, corners, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)
    #_, rvecs, tvecs, inliers=cv2.solvePnPRansac(world_points_3d, corners, cameraMatrix_ar, distCoef_ar)


    # World coordinates system
    axis = np.float32([[0.07,0,0],[0,0.07,0],[0,0,0.07],[0,0,0]])
    axis_imgpts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    reprojection_imgpts, jacobian = cv2.projectPoints(world_points_3d, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    # Rotation_vector into rotation_matrix
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]


    return axis_imgpts,corners,ret,rvec_matrix,translation_vector,rotation_vector,reprojection_imgpts

def main():

    counter=0
    tmpNamec='temp2.jpg'

    pub_pose = rospy.Publisher('pose_camera_topic', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_camera_topic', Pose, pose_camera_callback)
    br = tf2_ros.TransformBroadcaster()

    rate = rospy.Rate(10) # 10hz

    import sys
    print "This is the name of the script: ", sys.argv[0]
    #flag=sys.argv[1]

    while not rospy.is_shutdown():

        counter+=1

        # Capture frame-by-frame

        #frame=cv2.imread('temp2.jpg')

        frame=camObj.get_image()
        #frame = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)

        #print(type(frame))
        if frame is None:
            print('no image!!!')
            continue

        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite('temp2.jpg', frame)
            break

        try:
            # 2D image points
            # To handle the corners array more easily, we can reshape it as follows
            ret, corners = cv2.findChessboardCorners(frame, (7,9))#coulmn and rows
            corners=corners.reshape(-1,2)#undefied number of rows
            if not ret:
                print('\nPlease, locate well the calibration target!!!')
                continue
        except Exception as ex:
            print('\nStatus of findChessboardCorners: {}'.format(ret))
            print('Please, locate well the calibration target!!!')
            print(ex)
            print('-------------------------------------------------')
            continue


        # Extrinsic calibration!!!
        axis_imgpts,corners,ret,rvec_matrix,translation_vector,rotation_vector,reprojection_imgpts= locate_target_orientation(frame,ret, corners)


        # print information about rotation and translation for the camera and world frame
        #print_information(rotation_vector,translation_vector,rvec_matrix)


        #draw and display lines and text on the image
        draw_show_on_image(frame,axis_imgpts,corners,ret,reprojection_imgpts)


        # get transform matrix from rotation and translation of the camera frame relative to the world frame
        #mat=data_to_transform(rvec_matrix.T,-np.dot(rvec_matrix.T, translation_vector))
        #print(mat)

        # get the pose of the camera frame relative to the world frame
        #pose=transform_to_pose(mat)
        #print(pose)

        # publish pose of the camera frame
        #pub_pose.publish(pose)

        # we should expect to go through the loop 10 times per second
        rate.sleep()

        # publish transform for the following coordinate frames: target, camera and world
        #publish_transforms(br)


        print('\ncounter:',counter,'\n')



    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
