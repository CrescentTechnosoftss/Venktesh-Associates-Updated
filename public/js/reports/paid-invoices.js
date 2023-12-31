/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./node_modules/core-js/internals/a-function.js":
/*!******************************************************!*\
  !*** ./node_modules/core-js/internals/a-function.js ***!
  \******************************************************/
/***/ ((module) => {

    module.exports = function (it) {
        if (typeof it != 'function') {
          throw TypeError(String(it) + ' is not a function');
        } return it;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/an-object.js":
      /*!*****************************************************!*\
        !*** ./node_modules/core-js/internals/an-object.js ***!
        \*****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var isObject = __webpack_require__(/*! ../internals/is-object */ "./node_modules/core-js/internals/is-object.js");
      
      module.exports = function (it) {
        if (!isObject(it)) {
          throw TypeError(String(it) + ' is not an object');
        } return it;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/array-includes.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/array-includes.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var toIndexedObject = __webpack_require__(/*! ../internals/to-indexed-object */ "./node_modules/core-js/internals/to-indexed-object.js");
      var toLength = __webpack_require__(/*! ../internals/to-length */ "./node_modules/core-js/internals/to-length.js");
      var toAbsoluteIndex = __webpack_require__(/*! ../internals/to-absolute-index */ "./node_modules/core-js/internals/to-absolute-index.js");
      
      // `Array.prototype.{ indexOf, includes }` methods implementation
      var createMethod = function (IS_INCLUDES) {
        return function ($this, el, fromIndex) {
          var O = toIndexedObject($this);
          var length = toLength(O.length);
          var index = toAbsoluteIndex(fromIndex, length);
          var value;
          // Array#includes uses SameValueZero equality algorithm
          // eslint-disable-next-line no-self-compare -- NaN check
          if (IS_INCLUDES && el != el) while (length > index) {
            value = O[index++];
            // eslint-disable-next-line no-self-compare -- NaN check
            if (value != value) return true;
          // Array#indexOf ignores holes, Array#includes - not
          } else for (;length > index; index++) {
            if ((IS_INCLUDES || index in O) && O[index] === el) return IS_INCLUDES || index || 0;
          } return !IS_INCLUDES && -1;
        };
      };
      
      module.exports = {
        // `Array.prototype.includes` method
        // https://tc39.es/ecma262/#sec-array.prototype.includes
        includes: createMethod(true),
        // `Array.prototype.indexOf` method
        // https://tc39.es/ecma262/#sec-array.prototype.indexof
        indexOf: createMethod(false)
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/array-method-is-strict.js":
      /*!******************************************************************!*\
        !*** ./node_modules/core-js/internals/array-method-is-strict.js ***!
        \******************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      "use strict";
      
      var fails = __webpack_require__(/*! ../internals/fails */ "./node_modules/core-js/internals/fails.js");
      
      module.exports = function (METHOD_NAME, argument) {
        var method = [][METHOD_NAME];
        return !!method && fails(function () {
          // eslint-disable-next-line no-useless-call,no-throw-literal -- required for testing
          method.call(null, argument || function () { throw 1; }, 1);
        });
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/array-reduce.js":
      /*!********************************************************!*\
        !*** ./node_modules/core-js/internals/array-reduce.js ***!
        \********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var aFunction = __webpack_require__(/*! ../internals/a-function */ "./node_modules/core-js/internals/a-function.js");
      var toObject = __webpack_require__(/*! ../internals/to-object */ "./node_modules/core-js/internals/to-object.js");
      var IndexedObject = __webpack_require__(/*! ../internals/indexed-object */ "./node_modules/core-js/internals/indexed-object.js");
      var toLength = __webpack_require__(/*! ../internals/to-length */ "./node_modules/core-js/internals/to-length.js");
      
      // `Array.prototype.{ reduce, reduceRight }` methods implementation
      var createMethod = function (IS_RIGHT) {
        return function (that, callbackfn, argumentsLength, memo) {
          aFunction(callbackfn);
          var O = toObject(that);
          var self = IndexedObject(O);
          var length = toLength(O.length);
          var index = IS_RIGHT ? length - 1 : 0;
          var i = IS_RIGHT ? -1 : 1;
          if (argumentsLength < 2) while (true) {
            if (index in self) {
              memo = self[index];
              index += i;
              break;
            }
            index += i;
            if (IS_RIGHT ? index < 0 : length <= index) {
              throw TypeError('Reduce of empty array with no initial value');
            }
          }
          for (;IS_RIGHT ? index >= 0 : length > index; index += i) if (index in self) {
            memo = callbackfn(memo, self[index], index, O);
          }
          return memo;
        };
      };
      
      module.exports = {
        // `Array.prototype.reduce` method
        // https://tc39.es/ecma262/#sec-array.prototype.reduce
        left: createMethod(false),
        // `Array.prototype.reduceRight` method
        // https://tc39.es/ecma262/#sec-array.prototype.reduceright
        right: createMethod(true)
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/classof-raw.js":
      /*!*******************************************************!*\
        !*** ./node_modules/core-js/internals/classof-raw.js ***!
        \*******************************************************/
      /***/ ((module) => {
      
      var toString = {}.toString;
      
      module.exports = function (it) {
        return toString.call(it).slice(8, -1);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/copy-constructor-properties.js":
      /*!***********************************************************************!*\
        !*** ./node_modules/core-js/internals/copy-constructor-properties.js ***!
        \***********************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var has = __webpack_require__(/*! ../internals/has */ "./node_modules/core-js/internals/has.js");
      var ownKeys = __webpack_require__(/*! ../internals/own-keys */ "./node_modules/core-js/internals/own-keys.js");
      var getOwnPropertyDescriptorModule = __webpack_require__(/*! ../internals/object-get-own-property-descriptor */ "./node_modules/core-js/internals/object-get-own-property-descriptor.js");
      var definePropertyModule = __webpack_require__(/*! ../internals/object-define-property */ "./node_modules/core-js/internals/object-define-property.js");
      
      module.exports = function (target, source) {
        var keys = ownKeys(source);
        var defineProperty = definePropertyModule.f;
        var getOwnPropertyDescriptor = getOwnPropertyDescriptorModule.f;
        for (var i = 0; i < keys.length; i++) {
          var key = keys[i];
          if (!has(target, key)) defineProperty(target, key, getOwnPropertyDescriptor(source, key));
        }
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/create-non-enumerable-property.js":
      /*!**************************************************************************!*\
        !*** ./node_modules/core-js/internals/create-non-enumerable-property.js ***!
        \**************************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var DESCRIPTORS = __webpack_require__(/*! ../internals/descriptors */ "./node_modules/core-js/internals/descriptors.js");
      var definePropertyModule = __webpack_require__(/*! ../internals/object-define-property */ "./node_modules/core-js/internals/object-define-property.js");
      var createPropertyDescriptor = __webpack_require__(/*! ../internals/create-property-descriptor */ "./node_modules/core-js/internals/create-property-descriptor.js");
      
      module.exports = DESCRIPTORS ? function (object, key, value) {
        return definePropertyModule.f(object, key, createPropertyDescriptor(1, value));
      } : function (object, key, value) {
        object[key] = value;
        return object;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/create-property-descriptor.js":
      /*!**********************************************************************!*\
        !*** ./node_modules/core-js/internals/create-property-descriptor.js ***!
        \**********************************************************************/
      /***/ ((module) => {
      
      module.exports = function (bitmap, value) {
        return {
          enumerable: !(bitmap & 1),
          configurable: !(bitmap & 2),
          writable: !(bitmap & 4),
          value: value
        };
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/descriptors.js":
      /*!*******************************************************!*\
        !*** ./node_modules/core-js/internals/descriptors.js ***!
        \*******************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var fails = __webpack_require__(/*! ../internals/fails */ "./node_modules/core-js/internals/fails.js");
      
      // Detect IE8's incomplete defineProperty implementation
      module.exports = !fails(function () {
        // eslint-disable-next-line es/no-object-defineproperty -- required for testing
        return Object.defineProperty({}, 1, { get: function () { return 7; } })[1] != 7;
      });
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/document-create-element.js":
      /*!*******************************************************************!*\
        !*** ./node_modules/core-js/internals/document-create-element.js ***!
        \*******************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var isObject = __webpack_require__(/*! ../internals/is-object */ "./node_modules/core-js/internals/is-object.js");
      
      var document = global.document;
      // typeof document.createElement is 'object' in old IE
      var EXISTS = isObject(document) && isObject(document.createElement);
      
      module.exports = function (it) {
        return EXISTS ? document.createElement(it) : {};
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/engine-is-node.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/engine-is-node.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var classof = __webpack_require__(/*! ../internals/classof-raw */ "./node_modules/core-js/internals/classof-raw.js");
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      
      module.exports = classof(global.process) == 'process';
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/engine-user-agent.js":
      /*!*************************************************************!*\
        !*** ./node_modules/core-js/internals/engine-user-agent.js ***!
        \*************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var getBuiltIn = __webpack_require__(/*! ../internals/get-built-in */ "./node_modules/core-js/internals/get-built-in.js");
      
      module.exports = getBuiltIn('navigator', 'userAgent') || '';
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/engine-v8-version.js":
      /*!*************************************************************!*\
        !*** ./node_modules/core-js/internals/engine-v8-version.js ***!
        \*************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var userAgent = __webpack_require__(/*! ../internals/engine-user-agent */ "./node_modules/core-js/internals/engine-user-agent.js");
      
      var process = global.process;
      var versions = process && process.versions;
      var v8 = versions && versions.v8;
      var match, version;
      
      if (v8) {
        match = v8.split('.');
        version = match[0] + match[1];
      } else if (userAgent) {
        match = userAgent.match(/Edge\/(\d+)/);
        if (!match || match[1] >= 74) {
          match = userAgent.match(/Chrome\/(\d+)/);
          if (match) version = match[1];
        }
      }
      
      module.exports = version && +version;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/enum-bug-keys.js":
      /*!*********************************************************!*\
        !*** ./node_modules/core-js/internals/enum-bug-keys.js ***!
        \*********************************************************/
      /***/ ((module) => {
      
      // IE8- don't enum bug keys
      module.exports = [
        'constructor',
        'hasOwnProperty',
        'isPrototypeOf',
        'propertyIsEnumerable',
        'toLocaleString',
        'toString',
        'valueOf'
      ];
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/export.js":
      /*!**************************************************!*\
        !*** ./node_modules/core-js/internals/export.js ***!
        \**************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var getOwnPropertyDescriptor = __webpack_require__(/*! ../internals/object-get-own-property-descriptor */ "./node_modules/core-js/internals/object-get-own-property-descriptor.js").f;
      var createNonEnumerableProperty = __webpack_require__(/*! ../internals/create-non-enumerable-property */ "./node_modules/core-js/internals/create-non-enumerable-property.js");
      var redefine = __webpack_require__(/*! ../internals/redefine */ "./node_modules/core-js/internals/redefine.js");
      var setGlobal = __webpack_require__(/*! ../internals/set-global */ "./node_modules/core-js/internals/set-global.js");
      var copyConstructorProperties = __webpack_require__(/*! ../internals/copy-constructor-properties */ "./node_modules/core-js/internals/copy-constructor-properties.js");
      var isForced = __webpack_require__(/*! ../internals/is-forced */ "./node_modules/core-js/internals/is-forced.js");
      
      /*
        options.target      - name of the target object
        options.global      - target is the global object
        options.stat        - export as static methods of target
        options.proto       - export as prototype methods of target
        options.real        - real prototype method for the `pure` version
        options.forced      - export even if the native feature is available
        options.bind        - bind methods to the target, required for the `pure` version
        options.wrap        - wrap constructors to preventing global pollution, required for the `pure` version
        options.unsafe      - use the simple assignment of property instead of delete + defineProperty
        options.sham        - add a flag to not completely full polyfills
        options.enumerable  - export as enumerable property
        options.noTargetGet - prevent calling a getter on target
      */
      module.exports = function (options, source) {
        var TARGET = options.target;
        var GLOBAL = options.global;
        var STATIC = options.stat;
        var FORCED, target, key, targetProperty, sourceProperty, descriptor;
        if (GLOBAL) {
          target = global;
        } else if (STATIC) {
          target = global[TARGET] || setGlobal(TARGET, {});
        } else {
          target = (global[TARGET] || {}).prototype;
        }
        if (target) for (key in source) {
          sourceProperty = source[key];
          if (options.noTargetGet) {
            descriptor = getOwnPropertyDescriptor(target, key);
            targetProperty = descriptor && descriptor.value;
          } else targetProperty = target[key];
          FORCED = isForced(GLOBAL ? key : TARGET + (STATIC ? '.' : '#') + key, options.forced);
          // contained in target
          if (!FORCED && targetProperty !== undefined) {
            if (typeof sourceProperty === typeof targetProperty) continue;
            copyConstructorProperties(sourceProperty, targetProperty);
          }
          // add a flag to not completely full polyfills
          if (options.sham || (targetProperty && targetProperty.sham)) {
            createNonEnumerableProperty(sourceProperty, 'sham', true);
          }
          // extend global
          redefine(target, key, sourceProperty, options);
        }
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/fails.js":
      /*!*************************************************!*\
        !*** ./node_modules/core-js/internals/fails.js ***!
        \*************************************************/
      /***/ ((module) => {
      
      module.exports = function (exec) {
        try {
          return !!exec();
        } catch (error) {
          return true;
        }
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/get-built-in.js":
      /*!********************************************************!*\
        !*** ./node_modules/core-js/internals/get-built-in.js ***!
        \********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var path = __webpack_require__(/*! ../internals/path */ "./node_modules/core-js/internals/path.js");
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      
      var aFunction = function (variable) {
        return typeof variable == 'function' ? variable : undefined;
      };
      
      module.exports = function (namespace, method) {
        return arguments.length < 2 ? aFunction(path[namespace]) || aFunction(global[namespace])
          : path[namespace] && path[namespace][method] || global[namespace] && global[namespace][method];
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/global.js":
      /*!**************************************************!*\
        !*** ./node_modules/core-js/internals/global.js ***!
        \**************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var check = function (it) {
        return it && it.Math == Math && it;
      };
      
      // https://github.com/zloirock/core-js/issues/86#issuecomment-115759028
      module.exports =
        // eslint-disable-next-line es/no-global-this -- safe
        check(typeof globalThis == 'object' && globalThis) ||
        check(typeof window == 'object' && window) ||
        // eslint-disable-next-line no-restricted-globals -- safe
        check(typeof self == 'object' && self) ||
        check(typeof __webpack_require__.g == 'object' && __webpack_require__.g) ||
        // eslint-disable-next-line no-new-func -- fallback
        (function () { return this; })() || Function('return this')();
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/has.js":
      /*!***********************************************!*\
        !*** ./node_modules/core-js/internals/has.js ***!
        \***********************************************/
      /***/ ((module) => {
      
      var hasOwnProperty = {}.hasOwnProperty;
      
      module.exports = function (it, key) {
        return hasOwnProperty.call(it, key);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/hidden-keys.js":
      /*!*******************************************************!*\
        !*** ./node_modules/core-js/internals/hidden-keys.js ***!
        \*******************************************************/
      /***/ ((module) => {
      
      module.exports = {};
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/ie8-dom-define.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/ie8-dom-define.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var DESCRIPTORS = __webpack_require__(/*! ../internals/descriptors */ "./node_modules/core-js/internals/descriptors.js");
      var fails = __webpack_require__(/*! ../internals/fails */ "./node_modules/core-js/internals/fails.js");
      var createElement = __webpack_require__(/*! ../internals/document-create-element */ "./node_modules/core-js/internals/document-create-element.js");
      
      // Thank's IE8 for his funny defineProperty
      module.exports = !DESCRIPTORS && !fails(function () {
        // eslint-disable-next-line es/no-object-defineproperty -- requied for testing
        return Object.defineProperty(createElement('div'), 'a', {
          get: function () { return 7; }
        }).a != 7;
      });
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/indexed-object.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/indexed-object.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var fails = __webpack_require__(/*! ../internals/fails */ "./node_modules/core-js/internals/fails.js");
      var classof = __webpack_require__(/*! ../internals/classof-raw */ "./node_modules/core-js/internals/classof-raw.js");
      
      var split = ''.split;
      
      // fallback for non-array-like ES3 and non-enumerable old V8 strings
      module.exports = fails(function () {
        // throws an error in rhino, see https://github.com/mozilla/rhino/issues/346
        // eslint-disable-next-line no-prototype-builtins -- safe
        return !Object('z').propertyIsEnumerable(0);
      }) ? function (it) {
        return classof(it) == 'String' ? split.call(it, '') : Object(it);
      } : Object;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/inspect-source.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/inspect-source.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var store = __webpack_require__(/*! ../internals/shared-store */ "./node_modules/core-js/internals/shared-store.js");
      
      var functionToString = Function.toString;
      
      // this helper broken in `3.4.1-3.4.4`, so we can't use `shared` helper
      if (typeof store.inspectSource != 'function') {
        store.inspectSource = function (it) {
          return functionToString.call(it);
        };
      }
      
      module.exports = store.inspectSource;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/internal-state.js":
      /*!**********************************************************!*\
        !*** ./node_modules/core-js/internals/internal-state.js ***!
        \**********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var NATIVE_WEAK_MAP = __webpack_require__(/*! ../internals/native-weak-map */ "./node_modules/core-js/internals/native-weak-map.js");
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var isObject = __webpack_require__(/*! ../internals/is-object */ "./node_modules/core-js/internals/is-object.js");
      var createNonEnumerableProperty = __webpack_require__(/*! ../internals/create-non-enumerable-property */ "./node_modules/core-js/internals/create-non-enumerable-property.js");
      var objectHas = __webpack_require__(/*! ../internals/has */ "./node_modules/core-js/internals/has.js");
      var shared = __webpack_require__(/*! ../internals/shared-store */ "./node_modules/core-js/internals/shared-store.js");
      var sharedKey = __webpack_require__(/*! ../internals/shared-key */ "./node_modules/core-js/internals/shared-key.js");
      var hiddenKeys = __webpack_require__(/*! ../internals/hidden-keys */ "./node_modules/core-js/internals/hidden-keys.js");
      
      var OBJECT_ALREADY_INITIALIZED = 'Object already initialized';
      var WeakMap = global.WeakMap;
      var set, get, has;
      
      var enforce = function (it) {
        return has(it) ? get(it) : set(it, {});
      };
      
      var getterFor = function (TYPE) {
        return function (it) {
          var state;
          if (!isObject(it) || (state = get(it)).type !== TYPE) {
            throw TypeError('Incompatible receiver, ' + TYPE + ' required');
          } return state;
        };
      };
      
      if (NATIVE_WEAK_MAP) {
        var store = shared.state || (shared.state = new WeakMap());
        var wmget = store.get;
        var wmhas = store.has;
        var wmset = store.set;
        set = function (it, metadata) {
          if (wmhas.call(store, it)) throw new TypeError(OBJECT_ALREADY_INITIALIZED);
          metadata.facade = it;
          wmset.call(store, it, metadata);
          return metadata;
        };
        get = function (it) {
          return wmget.call(store, it) || {};
        };
        has = function (it) {
          return wmhas.call(store, it);
        };
      } else {
        var STATE = sharedKey('state');
        hiddenKeys[STATE] = true;
        set = function (it, metadata) {
          if (objectHas(it, STATE)) throw new TypeError(OBJECT_ALREADY_INITIALIZED);
          metadata.facade = it;
          createNonEnumerableProperty(it, STATE, metadata);
          return metadata;
        };
        get = function (it) {
          return objectHas(it, STATE) ? it[STATE] : {};
        };
        has = function (it) {
          return objectHas(it, STATE);
        };
      }
      
      module.exports = {
        set: set,
        get: get,
        has: has,
        enforce: enforce,
        getterFor: getterFor
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/is-forced.js":
      /*!*****************************************************!*\
        !*** ./node_modules/core-js/internals/is-forced.js ***!
        \*****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var fails = __webpack_require__(/*! ../internals/fails */ "./node_modules/core-js/internals/fails.js");
      
      var replacement = /#|\.prototype\./;
      
      var isForced = function (feature, detection) {
        var value = data[normalize(feature)];
        return value == POLYFILL ? true
          : value == NATIVE ? false
          : typeof detection == 'function' ? fails(detection)
          : !!detection;
      };
      
      var normalize = isForced.normalize = function (string) {
        return String(string).replace(replacement, '.').toLowerCase();
      };
      
      var data = isForced.data = {};
      var NATIVE = isForced.NATIVE = 'N';
      var POLYFILL = isForced.POLYFILL = 'P';
      
      module.exports = isForced;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/is-object.js":
      /*!*****************************************************!*\
        !*** ./node_modules/core-js/internals/is-object.js ***!
        \*****************************************************/
      /***/ ((module) => {
      
      module.exports = function (it) {
        return typeof it === 'object' ? it !== null : typeof it === 'function';
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/is-pure.js":
      /*!***************************************************!*\
        !*** ./node_modules/core-js/internals/is-pure.js ***!
        \***************************************************/
      /***/ ((module) => {
      
      module.exports = false;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/native-weak-map.js":
      /*!***********************************************************!*\
        !*** ./node_modules/core-js/internals/native-weak-map.js ***!
        \***********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var inspectSource = __webpack_require__(/*! ../internals/inspect-source */ "./node_modules/core-js/internals/inspect-source.js");
      
      var WeakMap = global.WeakMap;
      
      module.exports = typeof WeakMap === 'function' && /native code/.test(inspectSource(WeakMap));
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-define-property.js":
      /*!******************************************************************!*\
        !*** ./node_modules/core-js/internals/object-define-property.js ***!
        \******************************************************************/
      /***/ ((__unused_webpack_module, exports, __webpack_require__) => {
      
      var DESCRIPTORS = __webpack_require__(/*! ../internals/descriptors */ "./node_modules/core-js/internals/descriptors.js");
      var IE8_DOM_DEFINE = __webpack_require__(/*! ../internals/ie8-dom-define */ "./node_modules/core-js/internals/ie8-dom-define.js");
      var anObject = __webpack_require__(/*! ../internals/an-object */ "./node_modules/core-js/internals/an-object.js");
      var toPrimitive = __webpack_require__(/*! ../internals/to-primitive */ "./node_modules/core-js/internals/to-primitive.js");
      
      // eslint-disable-next-line es/no-object-defineproperty -- safe
      var $defineProperty = Object.defineProperty;
      
      // `Object.defineProperty` method
      // https://tc39.es/ecma262/#sec-object.defineproperty
      exports.f = DESCRIPTORS ? $defineProperty : function defineProperty(O, P, Attributes) {
        anObject(O);
        P = toPrimitive(P, true);
        anObject(Attributes);
        if (IE8_DOM_DEFINE) try {
          return $defineProperty(O, P, Attributes);
        } catch (error) { /* empty */ }
        if ('get' in Attributes || 'set' in Attributes) throw TypeError('Accessors not supported');
        if ('value' in Attributes) O[P] = Attributes.value;
        return O;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-get-own-property-descriptor.js":
      /*!******************************************************************************!*\
        !*** ./node_modules/core-js/internals/object-get-own-property-descriptor.js ***!
        \******************************************************************************/
      /***/ ((__unused_webpack_module, exports, __webpack_require__) => {
      
      var DESCRIPTORS = __webpack_require__(/*! ../internals/descriptors */ "./node_modules/core-js/internals/descriptors.js");
      var propertyIsEnumerableModule = __webpack_require__(/*! ../internals/object-property-is-enumerable */ "./node_modules/core-js/internals/object-property-is-enumerable.js");
      var createPropertyDescriptor = __webpack_require__(/*! ../internals/create-property-descriptor */ "./node_modules/core-js/internals/create-property-descriptor.js");
      var toIndexedObject = __webpack_require__(/*! ../internals/to-indexed-object */ "./node_modules/core-js/internals/to-indexed-object.js");
      var toPrimitive = __webpack_require__(/*! ../internals/to-primitive */ "./node_modules/core-js/internals/to-primitive.js");
      var has = __webpack_require__(/*! ../internals/has */ "./node_modules/core-js/internals/has.js");
      var IE8_DOM_DEFINE = __webpack_require__(/*! ../internals/ie8-dom-define */ "./node_modules/core-js/internals/ie8-dom-define.js");
      
      // eslint-disable-next-line es/no-object-getownpropertydescriptor -- safe
      var $getOwnPropertyDescriptor = Object.getOwnPropertyDescriptor;
      
      // `Object.getOwnPropertyDescriptor` method
      // https://tc39.es/ecma262/#sec-object.getownpropertydescriptor
      exports.f = DESCRIPTORS ? $getOwnPropertyDescriptor : function getOwnPropertyDescriptor(O, P) {
        O = toIndexedObject(O);
        P = toPrimitive(P, true);
        if (IE8_DOM_DEFINE) try {
          return $getOwnPropertyDescriptor(O, P);
        } catch (error) { /* empty */ }
        if (has(O, P)) return createPropertyDescriptor(!propertyIsEnumerableModule.f.call(O, P), O[P]);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-get-own-property-names.js":
      /*!*************************************************************************!*\
        !*** ./node_modules/core-js/internals/object-get-own-property-names.js ***!
        \*************************************************************************/
      /***/ ((__unused_webpack_module, exports, __webpack_require__) => {
      
      var internalObjectKeys = __webpack_require__(/*! ../internals/object-keys-internal */ "./node_modules/core-js/internals/object-keys-internal.js");
      var enumBugKeys = __webpack_require__(/*! ../internals/enum-bug-keys */ "./node_modules/core-js/internals/enum-bug-keys.js");
      
      var hiddenKeys = enumBugKeys.concat('length', 'prototype');
      
      // `Object.getOwnPropertyNames` method
      // https://tc39.es/ecma262/#sec-object.getownpropertynames
      // eslint-disable-next-line es/no-object-getownpropertynames -- safe
      exports.f = Object.getOwnPropertyNames || function getOwnPropertyNames(O) {
        return internalObjectKeys(O, hiddenKeys);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-get-own-property-symbols.js":
      /*!***************************************************************************!*\
        !*** ./node_modules/core-js/internals/object-get-own-property-symbols.js ***!
        \***************************************************************************/
      /***/ ((__unused_webpack_module, exports) => {
      
      // eslint-disable-next-line es/no-object-getownpropertysymbols -- safe
      exports.f = Object.getOwnPropertySymbols;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-keys-internal.js":
      /*!****************************************************************!*\
        !*** ./node_modules/core-js/internals/object-keys-internal.js ***!
        \****************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var has = __webpack_require__(/*! ../internals/has */ "./node_modules/core-js/internals/has.js");
      var toIndexedObject = __webpack_require__(/*! ../internals/to-indexed-object */ "./node_modules/core-js/internals/to-indexed-object.js");
      var indexOf = __webpack_require__(/*! ../internals/array-includes */ "./node_modules/core-js/internals/array-includes.js").indexOf;
      var hiddenKeys = __webpack_require__(/*! ../internals/hidden-keys */ "./node_modules/core-js/internals/hidden-keys.js");
      
      module.exports = function (object, names) {
        var O = toIndexedObject(object);
        var i = 0;
        var result = [];
        var key;
        for (key in O) !has(hiddenKeys, key) && has(O, key) && result.push(key);
        // Don't enum bug & hidden keys
        while (names.length > i) if (has(O, key = names[i++])) {
          ~indexOf(result, key) || result.push(key);
        }
        return result;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/object-property-is-enumerable.js":
      /*!*************************************************************************!*\
        !*** ./node_modules/core-js/internals/object-property-is-enumerable.js ***!
        \*************************************************************************/
      /***/ ((__unused_webpack_module, exports) => {
      
      "use strict";
      
      var $propertyIsEnumerable = {}.propertyIsEnumerable;
      // eslint-disable-next-line es/no-object-getownpropertydescriptor -- safe
      var getOwnPropertyDescriptor = Object.getOwnPropertyDescriptor;
      
      // Nashorn ~ JDK8 bug
      var NASHORN_BUG = getOwnPropertyDescriptor && !$propertyIsEnumerable.call({ 1: 2 }, 1);
      
      // `Object.prototype.propertyIsEnumerable` method implementation
      // https://tc39.es/ecma262/#sec-object.prototype.propertyisenumerable
      exports.f = NASHORN_BUG ? function propertyIsEnumerable(V) {
        var descriptor = getOwnPropertyDescriptor(this, V);
        return !!descriptor && descriptor.enumerable;
      } : $propertyIsEnumerable;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/own-keys.js":
      /*!****************************************************!*\
        !*** ./node_modules/core-js/internals/own-keys.js ***!
        \****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var getBuiltIn = __webpack_require__(/*! ../internals/get-built-in */ "./node_modules/core-js/internals/get-built-in.js");
      var getOwnPropertyNamesModule = __webpack_require__(/*! ../internals/object-get-own-property-names */ "./node_modules/core-js/internals/object-get-own-property-names.js");
      var getOwnPropertySymbolsModule = __webpack_require__(/*! ../internals/object-get-own-property-symbols */ "./node_modules/core-js/internals/object-get-own-property-symbols.js");
      var anObject = __webpack_require__(/*! ../internals/an-object */ "./node_modules/core-js/internals/an-object.js");
      
      // all object keys, includes non-enumerable and symbols
      module.exports = getBuiltIn('Reflect', 'ownKeys') || function ownKeys(it) {
        var keys = getOwnPropertyNamesModule.f(anObject(it));
        var getOwnPropertySymbols = getOwnPropertySymbolsModule.f;
        return getOwnPropertySymbols ? keys.concat(getOwnPropertySymbols(it)) : keys;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/path.js":
      /*!************************************************!*\
        !*** ./node_modules/core-js/internals/path.js ***!
        \************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      
      module.exports = global;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/redefine.js":
      /*!****************************************************!*\
        !*** ./node_modules/core-js/internals/redefine.js ***!
        \****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var createNonEnumerableProperty = __webpack_require__(/*! ../internals/create-non-enumerable-property */ "./node_modules/core-js/internals/create-non-enumerable-property.js");
      var has = __webpack_require__(/*! ../internals/has */ "./node_modules/core-js/internals/has.js");
      var setGlobal = __webpack_require__(/*! ../internals/set-global */ "./node_modules/core-js/internals/set-global.js");
      var inspectSource = __webpack_require__(/*! ../internals/inspect-source */ "./node_modules/core-js/internals/inspect-source.js");
      var InternalStateModule = __webpack_require__(/*! ../internals/internal-state */ "./node_modules/core-js/internals/internal-state.js");
      
      var getInternalState = InternalStateModule.get;
      var enforceInternalState = InternalStateModule.enforce;
      var TEMPLATE = String(String).split('String');
      
      (module.exports = function (O, key, value, options) {
        var unsafe = options ? !!options.unsafe : false;
        var simple = options ? !!options.enumerable : false;
        var noTargetGet = options ? !!options.noTargetGet : false;
        var state;
        if (typeof value == 'function') {
          if (typeof key == 'string' && !has(value, 'name')) {
            createNonEnumerableProperty(value, 'name', key);
          }
          state = enforceInternalState(value);
          if (!state.source) {
            state.source = TEMPLATE.join(typeof key == 'string' ? key : '');
          }
        }
        if (O === global) {
          if (simple) O[key] = value;
          else setGlobal(key, value);
          return;
        } else if (!unsafe) {
          delete O[key];
        } else if (!noTargetGet && O[key]) {
          simple = true;
        }
        if (simple) O[key] = value;
        else createNonEnumerableProperty(O, key, value);
      // add fake Function#toString for correct work wrapped methods / constructors with methods like LoDash isNative
      })(Function.prototype, 'toString', function toString() {
        return typeof this == 'function' && getInternalState(this).source || inspectSource(this);
      });
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/require-object-coercible.js":
      /*!********************************************************************!*\
        !*** ./node_modules/core-js/internals/require-object-coercible.js ***!
        \********************************************************************/
      /***/ ((module) => {
      
      // `RequireObjectCoercible` abstract operation
      // https://tc39.es/ecma262/#sec-requireobjectcoercible
      module.exports = function (it) {
        if (it == undefined) throw TypeError("Can't call method on " + it);
        return it;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/set-global.js":
      /*!******************************************************!*\
        !*** ./node_modules/core-js/internals/set-global.js ***!
        \******************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var createNonEnumerableProperty = __webpack_require__(/*! ../internals/create-non-enumerable-property */ "./node_modules/core-js/internals/create-non-enumerable-property.js");
      
      module.exports = function (key, value) {
        try {
          createNonEnumerableProperty(global, key, value);
        } catch (error) {
          global[key] = value;
        } return value;
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/shared-key.js":
      /*!******************************************************!*\
        !*** ./node_modules/core-js/internals/shared-key.js ***!
        \******************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var shared = __webpack_require__(/*! ../internals/shared */ "./node_modules/core-js/internals/shared.js");
      var uid = __webpack_require__(/*! ../internals/uid */ "./node_modules/core-js/internals/uid.js");
      
      var keys = shared('keys');
      
      module.exports = function (key) {
        return keys[key] || (keys[key] = uid(key));
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/shared-store.js":
      /*!********************************************************!*\
        !*** ./node_modules/core-js/internals/shared-store.js ***!
        \********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var global = __webpack_require__(/*! ../internals/global */ "./node_modules/core-js/internals/global.js");
      var setGlobal = __webpack_require__(/*! ../internals/set-global */ "./node_modules/core-js/internals/set-global.js");
      
      var SHARED = '__core-js_shared__';
      var store = global[SHARED] || setGlobal(SHARED, {});
      
      module.exports = store;
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/shared.js":
      /*!**************************************************!*\
        !*** ./node_modules/core-js/internals/shared.js ***!
        \**************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var IS_PURE = __webpack_require__(/*! ../internals/is-pure */ "./node_modules/core-js/internals/is-pure.js");
      var store = __webpack_require__(/*! ../internals/shared-store */ "./node_modules/core-js/internals/shared-store.js");
      
      (module.exports = function (key, value) {
        return store[key] || (store[key] = value !== undefined ? value : {});
      })('versions', []).push({
        version: '3.10.2',
        mode: IS_PURE ? 'pure' : 'global',
        copyright: '© 2021 Denis Pushkarev (zloirock.ru)'
      });
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-absolute-index.js":
      /*!*************************************************************!*\
        !*** ./node_modules/core-js/internals/to-absolute-index.js ***!
        \*************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var toInteger = __webpack_require__(/*! ../internals/to-integer */ "./node_modules/core-js/internals/to-integer.js");
      
      var max = Math.max;
      var min = Math.min;
      
      // Helper for a popular repeating case of the spec:
      // Let integer be ? ToInteger(index).
      // If integer < 0, let result be max((length + integer), 0); else let result be min(integer, length).
      module.exports = function (index, length) {
        var integer = toInteger(index);
        return integer < 0 ? max(integer + length, 0) : min(integer, length);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-indexed-object.js":
      /*!*************************************************************!*\
        !*** ./node_modules/core-js/internals/to-indexed-object.js ***!
        \*************************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      // toObject with fallback for non-array-like ES3 strings
      var IndexedObject = __webpack_require__(/*! ../internals/indexed-object */ "./node_modules/core-js/internals/indexed-object.js");
      var requireObjectCoercible = __webpack_require__(/*! ../internals/require-object-coercible */ "./node_modules/core-js/internals/require-object-coercible.js");
      
      module.exports = function (it) {
        return IndexedObject(requireObjectCoercible(it));
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-integer.js":
      /*!******************************************************!*\
        !*** ./node_modules/core-js/internals/to-integer.js ***!
        \******************************************************/
      /***/ ((module) => {
      
      var ceil = Math.ceil;
      var floor = Math.floor;
      
      // `ToInteger` abstract operation
      // https://tc39.es/ecma262/#sec-tointeger
      module.exports = function (argument) {
        return isNaN(argument = +argument) ? 0 : (argument > 0 ? floor : ceil)(argument);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-length.js":
      /*!*****************************************************!*\
        !*** ./node_modules/core-js/internals/to-length.js ***!
        \*****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var toInteger = __webpack_require__(/*! ../internals/to-integer */ "./node_modules/core-js/internals/to-integer.js");
      
      var min = Math.min;
      
      // `ToLength` abstract operation
      // https://tc39.es/ecma262/#sec-tolength
      module.exports = function (argument) {
        return argument > 0 ? min(toInteger(argument), 0x1FFFFFFFFFFFFF) : 0; // 2 ** 53 - 1 == 9007199254740991
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-object.js":
      /*!*****************************************************!*\
        !*** ./node_modules/core-js/internals/to-object.js ***!
        \*****************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var requireObjectCoercible = __webpack_require__(/*! ../internals/require-object-coercible */ "./node_modules/core-js/internals/require-object-coercible.js");
      
      // `ToObject` abstract operation
      // https://tc39.es/ecma262/#sec-toobject
      module.exports = function (argument) {
        return Object(requireObjectCoercible(argument));
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/to-primitive.js":
      /*!********************************************************!*\
        !*** ./node_modules/core-js/internals/to-primitive.js ***!
        \********************************************************/
      /***/ ((module, __unused_webpack_exports, __webpack_require__) => {
      
      var isObject = __webpack_require__(/*! ../internals/is-object */ "./node_modules/core-js/internals/is-object.js");
      
      // `ToPrimitive` abstract operation
      // https://tc39.es/ecma262/#sec-toprimitive
      // instead of the ES6 spec version, we didn't implement @@toPrimitive case
      // and the second argument - flag - preferred type is a string
      module.exports = function (input, PREFERRED_STRING) {
        if (!isObject(input)) return input;
        var fn, val;
        if (PREFERRED_STRING && typeof (fn = input.toString) == 'function' && !isObject(val = fn.call(input))) return val;
        if (typeof (fn = input.valueOf) == 'function' && !isObject(val = fn.call(input))) return val;
        if (!PREFERRED_STRING && typeof (fn = input.toString) == 'function' && !isObject(val = fn.call(input))) return val;
        throw TypeError("Can't convert object to primitive value");
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/internals/uid.js":
      /*!***********************************************!*\
        !*** ./node_modules/core-js/internals/uid.js ***!
        \***********************************************/
      /***/ ((module) => {
      
      var id = 0;
      var postfix = Math.random();
      
      module.exports = function (key) {
        return 'Symbol(' + String(key === undefined ? '' : key) + ')_' + (++id + postfix).toString(36);
      };
      
      
      /***/ }),
      
      /***/ "./node_modules/core-js/modules/es.array.reduce.js":
      /*!*********************************************************!*\
        !*** ./node_modules/core-js/modules/es.array.reduce.js ***!
        \*********************************************************/
      /***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {
      
      "use strict";
      
      var $ = __webpack_require__(/*! ../internals/export */ "./node_modules/core-js/internals/export.js");
      var $reduce = __webpack_require__(/*! ../internals/array-reduce */ "./node_modules/core-js/internals/array-reduce.js").left;
      var arrayMethodIsStrict = __webpack_require__(/*! ../internals/array-method-is-strict */ "./node_modules/core-js/internals/array-method-is-strict.js");
      var CHROME_VERSION = __webpack_require__(/*! ../internals/engine-v8-version */ "./node_modules/core-js/internals/engine-v8-version.js");
      var IS_NODE = __webpack_require__(/*! ../internals/engine-is-node */ "./node_modules/core-js/internals/engine-is-node.js");
      
      var STRICT_METHOD = arrayMethodIsStrict('reduce');
      // Chrome 80-82 has a critical bug
      // https://bugs.chromium.org/p/chromium/issues/detail?id=1049982
      var CHROME_BUG = !IS_NODE && CHROME_VERSION > 79 && CHROME_VERSION < 83;
      
      // `Array.prototype.reduce` method
      // https://tc39.es/ecma262/#sec-array.prototype.reduce
      $({ target: 'Array', proto: true, forced: !STRICT_METHOD || CHROME_BUG }, {
        reduce: function reduce(callbackfn /* , initialValue */) {
          return $reduce(this, callbackfn, arguments.length, arguments.length > 1 ? arguments[1] : undefined);
        }
      });
      
      
      /***/ })
      
      /******/ 	});
      /************************************************************************/
      /******/ 	// The module cache
      /******/ 	var __webpack_module_cache__ = {};
      /******/ 	
      /******/ 	// The require function
      /******/ 	function __webpack_require__(moduleId) {
      /******/ 		// Check if module is in cache
      /******/ 		var cachedModule = __webpack_module_cache__[moduleId];
      /******/ 		if (cachedModule !== undefined) {
      /******/ 			return cachedModule.exports;
      /******/ 		}
      /******/ 		// Create a new module (and put it into the cache)
      /******/ 		var module = __webpack_module_cache__[moduleId] = {
      /******/ 			// no module.id needed
      /******/ 			// no module.loaded needed
      /******/ 			exports: {}
      /******/ 		};
      /******/ 	
      /******/ 		// Execute the module function
      /******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
      /******/ 	
      /******/ 		// Return the exports of the module
      /******/ 		return module.exports;
      /******/ 	}
      /******/ 	
      /************************************************************************/
      /******/ 	/* webpack/runtime/compat get default export */
      /******/ 	(() => {
      /******/ 		// getDefaultExport function for compatibility with non-harmony modules
      /******/ 		__webpack_require__.n = (module) => {
      /******/ 			var getter = module && module.__esModule ?
      /******/ 				() => (module['default']) :
      /******/ 				() => (module);
      /******/ 			__webpack_require__.d(getter, { a: getter });
      /******/ 			return getter;
      /******/ 		};
      /******/ 	})();
      /******/ 	
      /******/ 	/* webpack/runtime/define property getters */
      /******/ 	(() => {
      /******/ 		// define getter functions for harmony exports
      /******/ 		__webpack_require__.d = (exports, definition) => {
      /******/ 			for(var key in definition) {
      /******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
      /******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
      /******/ 				}
      /******/ 			}
      /******/ 		};
      /******/ 	})();
      /******/ 	
      /******/ 	/* webpack/runtime/global */
      /******/ 	(() => {
      /******/ 		__webpack_require__.g = (function() {
      /******/ 			if (typeof globalThis === 'object') return globalThis;
      /******/ 			try {
      /******/ 				return this || new Function('return this')();
      /******/ 			} catch (e) {
      /******/ 				if (typeof window === 'object') return window;
      /******/ 			}
      /******/ 		})();
      /******/ 	})();
      /******/ 	
      /******/ 	/* webpack/runtime/hasOwnProperty shorthand */
      /******/ 	(() => {
      /******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
      /******/ 	})();
      /******/ 	
      /******/ 	/* webpack/runtime/make namespace object */
      /******/ 	(() => {
      /******/ 		// define __esModule on exports
      /******/ 		__webpack_require__.r = (exports) => {
      /******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
      /******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
      /******/ 			}
      /******/ 			Object.defineProperty(exports, '__esModule', { value: true });
      /******/ 		};
      /******/ 	})();
      /******/ 	
      /************************************************************************/
      var __webpack_exports__ = {};
      // This entry need to be wrapped in an IIFE because it need to be in strict mode.
      (() => {
      "use strict";
      /*!**********************************************!*\
        !*** ./resources/js/reports/paid-invoice.js ***!
        \**********************************************/
      __webpack_require__.r(__webpack_exports__);
      /* harmony import */ var core_js_modules_es_array_reduce_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! core-js/modules/es.array.reduce.js */ "./node_modules/core-js/modules/es.array.reduce.js");
      /* harmony import */ var core_js_modules_es_array_reduce_js__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(core_js_modules_es_array_reduce_js__WEBPACK_IMPORTED_MODULE_0__);
      
      
      (function () {
        $('#liReports').addClass('menu-open').children('a').addClass('active');
        $('#liInvoice a').addClass('active');
        $('#dpFromDate,#dpToDate').prop('readonly', true);
        $('#lblTotalAmount').text(formatCurrency(0));
        $('#ddlBank').on('change', getBranches);
        $('#btnShow').on('click', showReport);
        $('#btnExport').on('click', exportData);
        // $('#btnDownload').on('click', dowloadInvoice);
        // Assume you have a button or event that triggers the download
        $('#btnDownload').on('click', function() {
          const fromDate = $('#dpFromDate').val();
          const toDate = $('#dpToDate').val();
          dowloadInvoice(fromDate, toDate);
        });
        $('#dpFromDate,#dpToDate').datepicker({
          dateFormat: 'dd-mm-yy',
          changeMonth: true,
          changeYear: true,
          maxDate: new Date()
        }).datepicker('setDate', new Date());
        let dataTable = $('#tblPaidInvoice').DataTable({
          ajax: {
            url: currentUrl,
            type: 'POST',
            data: () => getElementDatas(),
            dataSrc: 'invoices'
          },
          language: {
            emptyTable: 'No Invoices found'
          },
          "footerCallback": (tfoot, data) => {
            const total = data.reduce((prev, curr) => prev + curr.amountPaid, 0);
            $(tfoot).children('td:eq(0)').html(`<h5>Total Paid Amount is ${formatCurrency(total)}<h5>`);
          },
          columns: [{
            title: 'S.No',
            render: (data, type, row, meta) => meta.row + 1
          }, {
            data: 'date',
            render: data => formatDateForBrowser(data),
            title: 'Paid Date'
          }, {
            data: 'invoiceNo',
            title: 'invoice No'
          }, {
            data: 'fileNo',
            title: 'File No'
          }, {
            data: 'bank',
            title: 'Bank / Branch'
          }, {
            data: 'customer',
            title: 'Customer Name / Phone No'
          }, {
            data: 'purchaser',
            title: 'Purchaser'
          }, {
            data: 'billAmount',
            render: formatCurrency,
            title: 'Bill Amount'
          }, {
            data: 'amountPaid',
            render: formatCurrency,
            title: 'Bill Amount'
          }, {
            data: 'receivedBy',
            title: 'Received By'
          }, {
            data: 'referredBy',
            title: 'Referred By'
          }, {
            data: 'engineer',
            title: 'Engineer'
          }],
          columnDefs: [
            { targets: 7, visible: false } // Hide the Bill Amount column (index 8)
          ]
        });
        showReport();
      
        function getBranches() {
          const bank = $('#ddlBank').val();
      
          if (bank === 'all') {
            $('#ddlBranch').clearSelect();
          } else {
            axios.get(`${currentUrl}/branches/${bank}`).then(response => {
              const options = [];
              $.each(response.data.branches, function (index, value) {
                options.push(`<option value="${value}">${value}</option>`);
              });
              $('#ddlBranch').populateSelect(options);
            });
          }
        }
      

        // function dowloadInvoice(defaultValue = '') {
        //   const invoiceNo = typeof defaultValue === 'string' ? defaultValue : $('#ddlInvoiceNo').val();
      
        //   if (invoiceNo === '') {
        //     toastr.info('Select the Proforma No to Download');
        //   } else {
        //     window.open(`${downloadUrl}/${invoiceNo}`);
        //   }
        // }

        function dowloadInvoice(fromDate, toDate) {
          if (fromDate === '' || toDate === '') {
              toastr.info('Select the From and To Dates to Download');
          } else {
              // Append the "from" and "to" dates as query parameters to the URL
              // const downloadUrlWithDates = `${downloadUrl}?from=${fromDate}&to=${toDate}`;
              const formattedUrl = downloadUrl.replace(':from', fromDate).replace(':to', toDate);
              window.open(formattedUrl);
          }
      }
      


        function getElementDatas() {
          return {
            from: formatDate($('#dpFromDate').datepicker('getDate')),
            to: formatDate($('#dpToDate').datepicker('getDate')),
            bank: $('#ddlBank').val(),
            branch: $('#ddlBranch').val(),
            engineer: $('#ddlEngineer').val(),
            receivedBy: $('#ddlReceivedBy').val(),
            _token: $('input[name="_token"]').val()
          };
        }
      
        function showReport() {
          dataTable.ajax.reload();
        }
      
        function exportData() {
          const data = getElementDatas();
      
          for (let obj in data) {
            $(`input[name="${obj}"]`).val(data[obj]);
          }
      
          $('#frmExport').trigger('submit');
        }
      })();
      })();
      
      /******/ })()
      ;