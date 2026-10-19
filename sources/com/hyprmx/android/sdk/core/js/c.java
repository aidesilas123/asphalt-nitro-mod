package com.hyprmx.android.sdk.core.js;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.koushikdutta.quack.JavaScriptObject;
import com.koushikdutta.quack.QuackContext;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements a {
    public final QuackContext a;
    public final ArrayList b;

    public c() {
        QuackContext quackContextCreate;
        try {
            quackContextCreate = QuackContext.create();
        } catch (Error e2) {
            HyprMXLog.e("Error creating context: " + e2);
            quackContextCreate = null;
        }
        this.a = quackContextCreate;
        this.b = new ArrayList();
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final Object a(String script) {
        String string;
        Intrinsics.checkNotNullParameter(script, "script");
        try {
            String message = "evaluateScriptForResponse " + script;
            Intrinsics.checkNotNullParameter(message, "message");
            String strTrimIndent = StringsKt__IndentKt.trimIndent("\n          var response = undefined;\n          try {\n            response = " + script + "\n          } catch (error) {\n            response = \"HyprEvalError \" + error;\n          }\n          response;\n        ");
            QuackContext quackContext = this.a;
            Object objEvaluate = quackContext != null ? quackContext.evaluate(strTrimIndent) : null;
            boolean z = true;
            if (objEvaluate == null || (string = objEvaluate.toString()) == null || !StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) "HyprEvalError", false, 2, (Object) null)) {
                z = false;
            }
            if (z) {
                throw new Exception(objEvaluate.toString());
            }
            return objEvaluate;
        } catch (Exception e2) {
            HyprMXLog.e("evaluateScriptForResponse " + script + " failed with exception " + e2, e2);
            for (d dVar : this.b) {
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = e2.getStackTrace().toString();
                } else {
                    Intrinsics.checkNotNullExpressionValue(localizedMessage, "exception.localizedMessa…ion.stackTrace.toString()");
                }
                dVar.a(localizedMessage);
            }
            return null;
        }
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void a() {
    }

    public final void a(com.hyprmx.android.sdk.analytics.a aVar) {
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void a(d listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b.add(listener);
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void a(String name, Object obj) {
        JavaScriptObject globalObject;
        Intrinsics.checkNotNullParameter(obj, "obj");
        Intrinsics.checkNotNullParameter(name, "name");
        QuackContext quackContext = this.a;
        if (quackContext == null || (globalObject = quackContext.getGlobalObject()) == null) {
            return;
        }
        globalObject.set(name, obj);
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void a(String constant, String constructor) {
        String string;
        Intrinsics.checkNotNullParameter(constant, "constant");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        try {
            String message = "insertGlobal " + constant;
            Intrinsics.checkNotNullParameter(message, "message");
            String strTrimIndent = StringsKt__IndentKt.trimIndent("\n          var constructorResponse = undefined;\n          var errorResponse = undefined;\n          try {\n            constructorResponse = " + constructor + ";\n          } catch (error) {\n            errorResponse = \"HyprEvalError \" + error;\n          }\n          const " + constant + " = constructorResponse;\n          errorResponse;\n        ");
            QuackContext quackContext = this.a;
            Object objEvaluate = quackContext != null ? quackContext.evaluate(strTrimIndent) : null;
            boolean z = true;
            if (objEvaluate == null || (string = objEvaluate.toString()) == null || !StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) "HyprEvalError", false, 2, (Object) null)) {
                z = false;
            }
            if (z) {
                throw new Exception(objEvaluate.toString());
            }
        } catch (Exception e2) {
            HyprMXLog.e("insertGlobal " + constant + " failed with exception " + e2, e2);
            for (d dVar : this.b) {
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = e2.getStackTrace().toString();
                } else {
                    Intrinsics.checkNotNullExpressionValue(localizedMessage, "exception.localizedMessa…ion.stackTrace.toString()");
                }
                dVar.a(localizedMessage);
            }
        }
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void b(d listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.b.remove(listener);
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final boolean b(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        QuackContext quackContext = this.a;
        if (quackContext == null) {
            HyprMXLog.e("There was an error creating the JS Interpreter");
            return false;
        }
        try {
            quackContext.evaluate(script);
            return true;
        } catch (Exception e2) {
            HyprMXLog.e("Error loading shared code", e2);
            for (d dVar : this.b) {
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = e2.getStackTrace().toString();
                } else {
                    Intrinsics.checkNotNullExpressionValue(localizedMessage, "exception.localizedMessa…ion.stackTrace.toString()");
                }
                dVar.a(localizedMessage);
            }
            return false;
        }
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void c(String script) {
        String string;
        Intrinsics.checkNotNullParameter(script, "script");
        try {
            String message = "evaluate " + script;
            Intrinsics.checkNotNullParameter(message, "message");
            String strTrimIndent = StringsKt__IndentKt.trimIndent("\n          var response = undefined;\n          try {\n            " + script + "\n          } catch (error) {\n            response = \"HyprEvalError \" + error;\n          }\n          response;\n        ");
            QuackContext quackContext = this.a;
            Object objEvaluate = quackContext != null ? quackContext.evaluate(strTrimIndent) : null;
            boolean z = true;
            if (objEvaluate == null || (string = objEvaluate.toString()) == null || !StringsKt__StringsKt.contains$default((CharSequence) string, (CharSequence) "HyprEvalError", false, 2, (Object) null)) {
                z = false;
            }
            if (z) {
                throw new Exception(objEvaluate.toString());
            }
        } catch (Exception e2) {
            HyprMXLog.e("Evaluate " + script + " failed with exception " + e2, e2);
            for (d dVar : this.b) {
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = e2.getStackTrace().toString();
                } else {
                    Intrinsics.checkNotNullExpressionValue(localizedMessage, "exception.localizedMessa…ion.stackTrace.toString()");
                }
                dVar.a(localizedMessage);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        QuackContext quackContext = this.a;
        if (quackContext != null) {
            quackContext.close();
        }
    }

    @Override // com.hyprmx.android.sdk.core.js.a
    public final void e(String name) {
        JavaScriptObject globalObject;
        Intrinsics.checkNotNullParameter(name, "name");
        QuackContext quackContext = this.a;
        if (quackContext == null || (globalObject = quackContext.getGlobalObject()) == null) {
            return;
        }
        globalObject.set(name, (Object) null);
    }
}
