/****************************************************************************
** Meta object code from reading C++ file 'traj_panel.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/industrial_calibration/calibration_guis/include/calibration_guis/traj_panel.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'traj_panel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_calibration_guis__TrajectoryPanel_t {
    QByteArrayData data[16];
    char stringdata0[238];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_calibration_guis__TrajectoryPanel_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_calibration_guis__TrajectoryPanel_t qt_meta_stringdata_calibration_guis__TrajectoryPanel = {
    {
QT_MOC_LITERAL(0, 0, 33), // "calibration_guis::TrajectoryP..."
QT_MOC_LITERAL(1, 34, 17), // "setbutton1Clicked"
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 17), // "setbutton2Clicked"
QT_MOC_LITERAL(4, 71, 17), // "setbutton3Clicked"
QT_MOC_LITERAL(5, 89, 17), // "setbutton4Clicked"
QT_MOC_LITERAL(6, 107, 17), // "setbutton5Clicked"
QT_MOC_LITERAL(7, 125, 17), // "setbutton6Clicked"
QT_MOC_LITERAL(8, 143, 17), // "setbutton7Clicked"
QT_MOC_LITERAL(9, 161, 6), // "setVel"
QT_MOC_LITERAL(10, 168, 16), // "linear_velocity_"
QT_MOC_LITERAL(11, 185, 17), // "angular_velocity_"
QT_MOC_LITERAL(12, 203, 8), // "setTopic"
QT_MOC_LITERAL(13, 212, 5), // "topic"
QT_MOC_LITERAL(14, 218, 7), // "sendVel"
QT_MOC_LITERAL(15, 226, 11) // "updateTopic"

    },
    "calibration_guis::TrajectoryPanel\0"
    "setbutton1Clicked\0\0setbutton2Clicked\0"
    "setbutton3Clicked\0setbutton4Clicked\0"
    "setbutton5Clicked\0setbutton6Clicked\0"
    "setbutton7Clicked\0setVel\0linear_velocity_\0"
    "angular_velocity_\0setTopic\0topic\0"
    "sendVel\0updateTopic"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_calibration_guis__TrajectoryPanel[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   69,    2, 0x0a /* Public */,
       3,    0,   70,    2, 0x0a /* Public */,
       4,    0,   71,    2, 0x0a /* Public */,
       5,    0,   72,    2, 0x0a /* Public */,
       6,    0,   73,    2, 0x0a /* Public */,
       7,    0,   74,    2, 0x0a /* Public */,
       8,    0,   75,    2, 0x0a /* Public */,
       9,    2,   76,    2, 0x0a /* Public */,
      12,    1,   81,    2, 0x0a /* Public */,
      14,    0,   84,    2, 0x0a /* Public */,
      15,    0,   85,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Float, QMetaType::Float,   10,   11,
    QMetaType::Void, QMetaType::QString,   13,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void calibration_guis::TrajectoryPanel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        TrajectoryPanel *_t = static_cast<TrajectoryPanel *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setbutton1Clicked(); break;
        case 1: _t->setbutton2Clicked(); break;
        case 2: _t->setbutton3Clicked(); break;
        case 3: _t->setbutton4Clicked(); break;
        case 4: _t->setbutton5Clicked(); break;
        case 5: _t->setbutton6Clicked(); break;
        case 6: _t->setbutton7Clicked(); break;
        case 7: _t->setVel((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2]))); break;
        case 8: _t->setTopic((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->sendVel(); break;
        case 10: _t->updateTopic(); break;
        default: ;
        }
    }
}

const QMetaObject calibration_guis::TrajectoryPanel::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_calibration_guis__TrajectoryPanel.data,
      qt_meta_data_calibration_guis__TrajectoryPanel,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *calibration_guis::TrajectoryPanel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *calibration_guis::TrajectoryPanel::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_calibration_guis__TrajectoryPanel.stringdata0))
        return static_cast<void*>(const_cast< TrajectoryPanel*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int calibration_guis::TrajectoryPanel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
