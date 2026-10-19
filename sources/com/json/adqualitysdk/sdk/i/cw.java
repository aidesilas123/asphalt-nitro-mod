package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.ck;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public final class cw extends cx {

    final class a implements hr {
        private /* synthetic */ ck a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5503d;

        a(ck ckVar, dr drVar, cj cjVar, List list) {
            this.a = ckVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5503d = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.hr
        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final boolean mo591(hp hpVar) {
            return this.a.m483().m485(hpVar, this.b, this.c, this.f5503d);
        }
    }

    final class b implements hr {
        private /* synthetic */ ck a;
        private /* synthetic */ dr b;
        private /* synthetic */ cj c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ List f5504d;

        b(ck ckVar, dr drVar, cj cjVar, List list) {
            this.a = ckVar;
            this.b = drVar;
            this.c = cjVar;
            this.f5504d = list;
        }

        @Override // com.json.adqualitysdk.sdk.i.hr
        /* JADX INFO: renamed from: ﻛ */
        public final boolean mo591(hp hpVar) {
            return this.a.m483().m485(hpVar, this.b, this.c, this.f5504d);
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m583(List<Object> list) {
        Object objM592;
        Class<?> cls;
        hl hlVar;
        Object objM5922;
        Class<?> cls2;
        int size = list.size();
        Object objM5923 = null;
        Class<?> cls3 = null;
        if (size == 2) {
            if (list.get(0) instanceof Class) {
                cls = (Class) cx.m592(list, 0, Class.class);
                objM592 = null;
            } else {
                Object objM5924 = cx.m592(list, 0, Object.class);
                if (objM5924 != null) {
                    objM592 = objM5924;
                    cls = objM5924.getClass();
                } else {
                    objM592 = objM5924;
                    cls = null;
                }
            }
            hlVar = (hl) cx.m592(list, 1, hl.class);
            objM5922 = null;
            cls3 = cls;
        } else if (size == 3) {
            if (list.get(0) instanceof Class) {
                cls2 = (Class) cx.m592(list, 0, Class.class);
                if (list.get(1) instanceof hl) {
                    hlVar = (hl) cx.m592(list, 1, hl.class);
                    objM5922 = cx.m592(list, 2, Object.class);
                } else {
                    Object objM5925 = cx.m592(list, 1, Object.class);
                    hlVar = (hl) cx.m592(list, 2, hl.class);
                    objM5922 = null;
                    cls3 = cls2;
                    objM592 = objM5925;
                }
            } else {
                objM5923 = cx.m592(list, 0, Object.class);
                cls2 = objM5923.getClass();
                hlVar = (hl) cx.m592(list, 1, hl.class);
                objM5922 = cx.m592(list, 2, Object.class);
            }
            Object obj = objM5923;
            cls3 = cls2;
            objM592 = obj;
        } else if (size != 4) {
            objM5922 = null;
            hlVar = null;
            objM592 = null;
        } else {
            cls3 = (Class) cx.m592(list, 0, Class.class);
            objM592 = cx.m592(list, 1, Object.class);
            hlVar = (hl) cx.m592(list, 2, hl.class);
            objM5922 = cx.m592(list, 3, Object.class);
        }
        hq.m770().m771();
        return hs.m773(cls3, objM592, hlVar, objM5922);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m584(List<Object> list) {
        if (list.get(0) instanceof Class) {
            return hq.m770().m771().m775((Class) cx.m592(list, 0, Class.class), (String) cx.m592(list, 1, String.class));
        }
        Object objM592 = cx.m592(list, 0, Object.class);
        if (list.get(1) instanceof List) {
            return hq.m770().m771().m777(objM592, new JSONArray((Collection) cx.m592(list, 1, List.class)));
        }
        if (list.get(1) instanceof JSONArray) {
            return hq.m770().m771().m777(objM592, (JSONArray) cx.m592(list, 1, JSONArray.class));
        }
        return hq.m770().m771().m778(objM592, (String) cx.m592(list, 1, String.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ck.e m585(List<Object> list) {
        return new ck.e((List) cx.m592(list, 0, List.class), ((Integer) cx.m592(list, 1, Integer.class)).intValue());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static List<Object> m586(List<Object> list) {
        Object objM592;
        hl hlVar;
        int size = list.size();
        Class<?> cls = null;
        cls = null;
        Object objM5922 = null;
        if (size == 2) {
            if (list.get(0) instanceof Class) {
                cls = (Class) cx.m592(list, 0, Class.class);
                objM592 = null;
            } else {
                objM592 = cx.m592(list, 0, Object.class);
                if (objM592 != null) {
                    cls = objM592.getClass();
                }
            }
            hlVar = (hl) cx.m592(list, 1, hl.class);
        } else if (size != 3) {
            hlVar = null;
            objM592 = null;
        } else if (list.get(0) instanceof Class) {
            Class<?> cls2 = (Class) cx.m592(list, 0, Class.class);
            if (list.get(1) instanceof hl) {
                hlVar = (hl) cx.m592(list, 1, hl.class);
            } else {
                objM5922 = cx.m592(list, 1, Object.class);
                hlVar = (hl) cx.m592(list, 2, hl.class);
            }
            objM592 = objM5922;
            cls = cls2;
        } else {
            Object objM5923 = cx.m592(list, 0, Object.class);
            Class<?> cls3 = objM5923.getClass();
            hlVar = (hl) cx.m592(list, 1, hl.class);
            cls = cls3;
            objM592 = objM5923;
        }
        hq.m770().m771();
        return hs.m774(cls, objM592, hlVar);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List<hp> m587(dr drVar, cj cjVar, List<Object> list) {
        Object objM592 = cx.m592(list, 0, Object.class);
        ck ckVar = (ck) cx.m592(list, 1, ck.class);
        List<Object> listC = cx.c(list, 2);
        if (ckVar == null) {
            return null;
        }
        return hq.m770().m771().m776(objM592, ckVar.m484(new a(ckVar, drVar, cjVar, listC)));
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List<Object> m588(dr drVar, cj cjVar, List<Object> list) {
        ArrayList arrayList = new ArrayList();
        for (hp hpVar : m587(drVar, cjVar, list)) {
            if (hpVar != null) {
                arrayList.add(hpVar.mo768());
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final <T> hp<T> m589(dr drVar, cj cjVar, List<Object> list) {
        Object objM592 = cx.m592(list, 0, Object.class);
        ck ckVar = (ck) cx.m592(list, 1, ck.class);
        List<Object> listC = cx.c(list, 2);
        if (ckVar == null) {
            return null;
        }
        return hq.m770().m771().m781(objM592, ckVar.m484(new b(ckVar, drVar, cjVar, listC)));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m590(dr drVar, cj cjVar, List<Object> list) {
        hp hpVarM589 = m589(drVar, cjVar, list);
        if (hpVarM589 != null) {
            return hpVarM589.mo768();
        }
        return null;
    }
}
