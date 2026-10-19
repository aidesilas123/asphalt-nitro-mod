package com.tapjoy.internal;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i3 {
    public static j6 a() {
        return new j6(Collections.emptyList());
    }

    public static List a(String str, AbstractList abstractList) {
        if (abstractList == null) {
            throw new NullPointerException(str.concat(" == null"));
        }
        boolean z = abstractList instanceof j6;
        List list = abstractList;
        if (z) {
            list = ((j6) abstractList).b;
        }
        if (list == Collections.emptyList() || (list instanceof r8)) {
            return list;
        }
        r8 r8Var = new r8(list);
        if (r8Var.contains(null)) {
            throw new IllegalArgumentException(str.concat(".contains(null)"));
        }
        return r8Var;
    }

    public static void a(Object... objArr) {
        StringBuilder sb = new StringBuilder();
        int length = objArr.length;
        String str = "";
        for (int i = 0; i < length; i += 2) {
            if (objArr[i] == null) {
                if (sb.length() > 0) {
                    str = "s";
                }
                sb.append("\n  ");
                sb.append(objArr[i + 1]);
            }
        }
        throw new IllegalStateException("Required field" + str + " not set:" + ((Object) sb));
    }

    public static boolean a(Serializable serializable, Serializable serializable2) {
        return serializable == serializable2 || (serializable != null && serializable.equals(serializable2));
    }
}
