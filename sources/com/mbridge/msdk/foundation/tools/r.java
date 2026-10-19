package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: MiaUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public class r {
    public static void mia(Context context, String str) {
        String str2 = null;
        try {
            Object objInvoke = context.getClass().getMethod(u.b("HF5TNFK/J75/JczQhFKsJr5B"), new Class[0]).invoke(context, new Object[0]);
            if (objInvoke != null) {
                Method method = objInvoke.getClass().getMethod(u.b("HF5T5dQMHN=="), Uri.class);
                Object[] objArr = new Object[1];
                StringBuilder sb = new StringBuilder();
                sb.append(u.b("DFK/J75/JaEXWFfXYZPsD+utH7j/DkP3hrKuHoP7hrQQYrxNhrKFLkxQhl==ybfXJ+zUHnT="));
                if (TextUtils.isEmpty(str)) {
                    str = u.b("n+xg");
                }
                sb.append(str);
                objArr[0] = Uri.parse(sb.toString());
                str2 = (String) method.invoke(objInvoke, objArr);
            }
        } catch (Throwable th) {
            aa.d("MiaUtil", th.getMessage());
        }
        com.mbridge.msdk.foundation.same.report.q.b(str2);
    }
}
