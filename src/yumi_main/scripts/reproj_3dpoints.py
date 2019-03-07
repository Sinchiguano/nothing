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

def draw_show_on_image(frame,axi_imgpts,corners,ret,reprojection_imgpts,line_width=2):

    # print(corners.shape)
    # print(type(corners))
    # print(reprojection_imgpts.shape)
    # print(type(reprojection_imgpts))
    aux_reprojection=reprojection_imgpts.reshape(-1,2)
    # print(aux_reprojection.shape)
    euclidean_distances=np.sqrt(np.sum((corners-aux_reprojection)**2, axis=1))

    '''
    Re-projection Error
    Re-projection error gives a good estimation of just how exact is the found parameters.
    This should be as close to zero as possible. Given the intrinsic, distortion, rotation and translation matrices,
    we first transform the object point to image point using cv2.projectPoints(). Then we calculate the absolute norm between what we got with our transformation and the corner finding algorithm. To find the average error we calculate the arithmetical mean of the errors calculate for all the calibration images.
    '''
    # print('len(euclidean distance): \n', len(euclidean_distances))
    # print('len(aux_reprojection): \n', len(aux_reprojection))
    # print('euclidean distance: \n',euclidean_distances[:5])
    # print('mean(euclidean distance): \n', euclidean_distances.mean())
    # #print('euclidean distance: \n',np.sqrt(np.sum((corners-aux_reprojection)**2)))
    # error = cv2.norm(corners,aux_reprojection, cv2.NORM_L2)/len(aux_reprojection)
    # print('Re-projection Error: ',error)

    # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
    #cv2.drawChessboardCorners(frame, (7,9), reprojection_imgpts, ret)#column and rows 7x9 after the calibration i do not need anymore
    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x


    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x
    cv2.imshow('projection',frame)

    # frame1=copy.deepcopy(frame)
    # for idx, corner in enumerate(corners):
    #     idx_as_str = '{}'.format(idx)
    #     text_pos = (corner + np.array([3.5,-7])).astype(int)
    #     cv2.putText(frame, idx_as_str, tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))
    #
    # # Display the resulting frame
    # cv2.drawChessboardCorners(frame1, (7,9), reprojection_imgpts, ret)
    # cv2.line(frame1, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    # cv2.line(frame1, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    # cv2.line(frame1, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x
    # cv2.imshow('Re-projection',frame1)
    # cv2.imwrite('test.jpg', frame)

    return euclidean_distances.mean()

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

def clean_reprojection_error(name_path):
    with open(name_path, 'r') as file:
        array_ = []
        for line in file:
            array_.append(float(line.rstrip()))
    return array_

def plotting_error(clean_list):
    print(np.sum(clean_list))
    print(len(clean_list))
    mean_error=np.sum(clean_list)/len(clean_list)
    print(mean_error)

    import matplotlib.pyplot as plt
    # red dashes, blue squares and green triangles
    plt.plot(np.arange(len(clean_list)), clean_list, 'ro')
    plt.xlabel('Images')
    plt.ylabel('Mean Error in Pixels')
    plt.title('Reprojection Errors')
    plt.text(10, 0.1, 'Overal mean error='+str(mean_error))
    plt.grid(True)
    plt.show()

def main():

    counter=0
    tmpNamec='temp2.jpg'

    rate = rospy.Rate(10) # 10hz

    import sys
    print "This is the name of the script: ", sys.argv[0]
    #flag=sys.argv[1]
    path_error_images='images_error/'

    projection_error=list()
    counter2=0
    while not rospy.is_shutdown():

        counter+=1

        # Capture frame-by-frame
        frame=camObj.get_image()


        #print(type(frame))
        if frame is None:
            print('no image!!!')
            continue

        command=cv2.waitKey(1) & 0xFF

        if command == ord('p'):
            counter2+=1
            cv2.imwrite(path_error_images+'img'+str(counter2)+'.jpg', frame)
            projection_error.append(error_)
            print('next!')
        elif command==ord('r'):
            with open(path_error_images+'projection_error.txt', 'w') as f:
                for i in range(len(projection_error)):
                    print(projection_error[i])
                    print('here')
                    f.write("%s\r\n" % projection_error[i])
                    print('done!')
                    #exit(0)
        if command == ord('q'):
            break
        print(projection_error)

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


        #draw and display lines and text on the image
        error_=draw_show_on_image(frame,axis_imgpts,corners,ret,reprojection_imgpts)

        #reprojection_error
        clean_list=clean_reprojection_error(path_error_images+'projection_error.txt')

        plotting_error(clean_list)
        # we should expect to go through the loop 10 times per second
        rate.sleep()

        print('\ncounter:',counter,'\n')



    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()



#
# mylist = error_repro.split(',')
# print(type(mylist))
# for i in mylist:
#     print(i)
# for i in range(0,len(mylist)):
#     print(mylist[i])
#     new_list.append(float(mylist[i]))
# exit(0)
