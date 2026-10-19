package com.koushikdutta.quack;

import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public interface QuackMethodObject extends QuackObject {

    /* JADX INFO: renamed from: com.koushikdutta.quack.QuackMethodObject$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static Object a(final QuackMethodObject quackMethodObject, Object obj) {
            if (NotificationCompat.CATEGORY_CALL.equals(obj)) {
                return new QuackMethodObject() { // from class: com.koushikdutta.quack.QuackMethodObject.1
                    @Override // com.koushikdutta.quack.QuackObject
                    public Object callMethod(Object obj2, Object... objArr) {
                        ArrayList arrayList = new ArrayList();
                        Collections.addAll(arrayList, objArr);
                        return quackMethodObject.callMethod(!arrayList.isEmpty() ? arrayList.remove(0) : null, arrayList.toArray());
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object construct(Object... objArr) {
                        return m0.b(this, objArr);
                    }

                    @Override // com.koushikdutta.quack.QuackMethodObject, com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object get(Object obj2) {
                        return CC.a(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean has(Object obj2) {
                        return m0.d(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean set(Object obj2, Object obj3) {
                        return m0.e(this, obj2, obj3);
                    }
                };
            }
            if ("apply".equals(obj)) {
                return new QuackMethodObject() { // from class: com.koushikdutta.quack.QuackMethodObject.2
                    @Override // com.koushikdutta.quack.QuackObject
                    public Object callMethod(Object obj2, Object... objArr) {
                        Object[] objArr2;
                        ArrayList arrayList = new ArrayList();
                        Collections.addAll(arrayList, objArr);
                        Object objRemove = !arrayList.isEmpty() ? arrayList.remove(0) : null;
                        if (arrayList.isEmpty()) {
                            objArr2 = new Object[0];
                        } else {
                            JavaScriptObject javaScriptObject = (JavaScriptObject) arrayList.remove(0);
                            int iIntValue = ((Number) javaScriptObject.get("length")).intValue();
                            Object[] objArr3 = new Object[iIntValue];
                            for (int i = 0; i < iIntValue; i++) {
                                objArr3[i] = javaScriptObject.get(i);
                            }
                            objArr2 = objArr3;
                        }
                        return quackMethodObject.callMethod(objRemove, objArr2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object construct(Object... objArr) {
                        return m0.b(this, objArr);
                    }

                    @Override // com.koushikdutta.quack.QuackMethodObject, com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object get(Object obj2) {
                        return CC.a(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean has(Object obj2) {
                        return m0.d(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean set(Object obj2, Object obj3) {
                        return m0.e(this, obj2, obj3);
                    }
                };
            }
            if ("toString".equals(obj)) {
                return new QuackMethodObject() { // from class: com.koushikdutta.quack.QuackMethodObject.3
                    @Override // com.koushikdutta.quack.QuackObject
                    public Object callMethod(Object obj2, Object... objArr) {
                        return "function";
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object construct(Object... objArr) {
                        return m0.b(this, objArr);
                    }

                    @Override // com.koushikdutta.quack.QuackMethodObject, com.koushikdutta.quack.QuackObject
                    public /* synthetic */ Object get(Object obj2) {
                        return CC.a(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean has(Object obj2) {
                        return m0.d(this, obj2);
                    }

                    @Override // com.koushikdutta.quack.QuackObject
                    public /* synthetic */ boolean set(Object obj2, Object obj3) {
                        return m0.e(this, obj2, obj3);
                    }
                };
            }
            return null;
        }
    }

    @Override // com.koushikdutta.quack.QuackObject
    Object get(Object obj);
}
