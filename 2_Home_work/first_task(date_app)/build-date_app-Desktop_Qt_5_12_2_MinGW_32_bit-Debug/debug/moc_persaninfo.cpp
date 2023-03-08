/****************************************************************************
** Meta object code from reading C++ file 'persaninfo.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../date_app/persaninfo.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'persaninfo.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_PersanInfo_t {
    QByteArrayData data[8];
    char stringdata0[53];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_PersanInfo_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_PersanInfo_t qt_meta_stringdata_PersanInfo = {
    {
QT_MOC_LITERAL(0, 0, 10), // "PersanInfo"
QT_MOC_LITERAL(1, 11, 4), // "name"
QT_MOC_LITERAL(2, 16, 3), // "age"
QT_MOC_LITERAL(3, 20, 6), // "gender"
QT_MOC_LITERAL(4, 27, 9), // "education"
QT_MOC_LITERAL(5, 37, 5), // "hobby"
QT_MOC_LITERAL(6, 43, 4), // "town"
QT_MOC_LITERAL(7, 48, 4) // "info"

    },
    "PersanInfo\0name\0age\0gender\0education\0"
    "hobby\0town\0info"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_PersanInfo[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       0,    0, // methods
       7,   14, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // properties: name, type, flags
       1, QMetaType::QString, 0x00095103,
       2, QMetaType::QString, 0x00095103,
       3, QMetaType::QString, 0x00095103,
       4, QMetaType::QString, 0x00095103,
       5, QMetaType::QString, 0x00095103,
       6, QMetaType::QString, 0x00095103,
       7, QMetaType::QString, 0x00095103,

       0        // eod
};

void PersanInfo::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{

#ifndef QT_NO_PROPERTIES
    if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<PersanInfo *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->getName(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->getAge(); break;
        case 2: *reinterpret_cast< QString*>(_v) = _t->getGender(); break;
        case 3: *reinterpret_cast< QString*>(_v) = _t->getEducation(); break;
        case 4: *reinterpret_cast< QString*>(_v) = _t->getHobby(); break;
        case 5: *reinterpret_cast< QString*>(_v) = _t->getTown(); break;
        case 6: *reinterpret_cast< QString*>(_v) = _t->getInfo(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<PersanInfo *>(_o);
        Q_UNUSED(_t)
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setName(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setAge(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setGender(*reinterpret_cast< QString*>(_v)); break;
        case 3: _t->setEducation(*reinterpret_cast< QString*>(_v)); break;
        case 4: _t->setHobby(*reinterpret_cast< QString*>(_v)); break;
        case 5: _t->setTown(*reinterpret_cast< QString*>(_v)); break;
        case 6: _t->setInfo(*reinterpret_cast< QString*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    }
#endif // QT_NO_PROPERTIES
    Q_UNUSED(_o);
    Q_UNUSED(_id);
    Q_UNUSED(_c);
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject PersanInfo::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_PersanInfo.data,
    qt_meta_data_PersanInfo,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *PersanInfo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *PersanInfo::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_PersanInfo.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int PersanInfo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    
#ifndef QT_NO_PROPERTIES
   if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 7;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 7;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
