/****************************************************************************
** Meta object code from reading C++ file 'functions.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../1_home_work/functions.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'functions.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Functions_t {
    QByteArrayData data[18];
    char stringdata0[106];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Functions_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Functions_t qt_meta_stringdata_Functions = {
    {
QT_MOC_LITERAL(0, 0, 9), // "Functions"
QT_MOC_LITERAL(1, 10, 10), // "anserFound"
QT_MOC_LITERAL(2, 21, 0), // ""
QT_MOC_LITERAL(3, 22, 5), // "anser"
QT_MOC_LITERAL(4, 28, 14), // "anserSecondQml"
QT_MOC_LITERAL(5, 43, 6), // "anserB"
QT_MOC_LITERAL(6, 50, 9), // "culculate"
QT_MOC_LITERAL(7, 60, 1), // "a"
QT_MOC_LITERAL(8, 62, 1), // "b"
QT_MOC_LITERAL(9, 64, 1), // "c"
QT_MOC_LITERAL(10, 66, 15), // "culculateSecond"
QT_MOC_LITERAL(11, 82, 2), // "ax"
QT_MOC_LITERAL(12, 85, 2), // "bx"
QT_MOC_LITERAL(13, 88, 2), // "cx"
QT_MOC_LITERAL(14, 91, 2), // "ay"
QT_MOC_LITERAL(15, 94, 2), // "by"
QT_MOC_LITERAL(16, 97, 2), // "cy"
QT_MOC_LITERAL(17, 100, 5) // "first"

    },
    "Functions\0anserFound\0\0anser\0anserSecondQml\0"
    "anserB\0culculate\0a\0b\0c\0culculateSecond\0"
    "ax\0bx\0cx\0ay\0by\0cy\0first"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Functions[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,
       4,    1,   42,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       6,    3,   45,    2, 0x0a /* Public */,
      10,    6,   52,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
      17,    3,   65,    2, 0x02 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Float,    3,
    QMetaType::Void, QMetaType::Float,    5,

 // slots: parameters
    QMetaType::Void, QMetaType::Float, QMetaType::Float, QMetaType::Float,    7,    8,    9,
    QMetaType::Void, QMetaType::Float, QMetaType::Float, QMetaType::Float, QMetaType::Float, QMetaType::Float, QMetaType::Float,   11,   12,   13,   14,   15,   16,

 // methods: parameters
    QMetaType::Double, QMetaType::Int, QMetaType::Int, QMetaType::Int,    7,    8,    9,

       0        // eod
};

void Functions::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Functions *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->anserFound((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 1: _t->anserSecondQml((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 2: _t->culculate((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3]))); break;
        case 3: _t->culculateSecond((*reinterpret_cast< float(*)>(_a[1])),(*reinterpret_cast< float(*)>(_a[2])),(*reinterpret_cast< float(*)>(_a[3])),(*reinterpret_cast< float(*)>(_a[4])),(*reinterpret_cast< float(*)>(_a[5])),(*reinterpret_cast< float(*)>(_a[6]))); break;
        case 4: { double _r = _t->first((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])));
            if (_a[0]) *reinterpret_cast< double*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Functions::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Functions::anserFound)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Functions::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&Functions::anserSecondQml)) {
                *result = 1;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject Functions::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_Functions.data,
    qt_meta_data_Functions,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *Functions::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Functions::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Functions.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Functions::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void Functions::anserFound(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Functions::anserSecondQml(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
