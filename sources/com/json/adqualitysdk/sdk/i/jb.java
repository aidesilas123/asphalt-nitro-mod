package com.json.adqualitysdk.sdk.i;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ExpandableListView;
import com.json.b4;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class jb {
    private static jb a;
    boolean b = false;
    private Set<jc> c = new HashSet();

    @TargetApi(14)
    static class a extends jb implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char f5895d = 13507;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5896e = 49813;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static char f5897f = 2555;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static char f5898g = 15826;
        private static int h = 0;
        private static int i = 1;
        private Map<Activity, Boolean> j;
        private WeakReference<Activity> k;
        private WeakReference<Application> l;

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.jb$a$a, reason: collision with other inner class name */
        final class C0352a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ Activity f5899d;

            C0352a(Activity activity) {
                this.f5899d = activity;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() throws Exception {
                jx.m979(this.f5899d);
            }
        }

        private a() {
            this.j = new WeakHashMap();
        }

        /* synthetic */ a(byte b) {
            this();
        }

        private static String b(String str, int i2) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (o.f139) {
                char[] cArr2 = new char[cArr.length];
                o.f138 = 0;
                char[] cArr3 = new char[2];
                while (true) {
                    int i3 = o.f138;
                    if (i3 < cArr.length) {
                        cArr3[0] = cArr[i3];
                        cArr3[1] = cArr[i3 + 1];
                        int i4 = 58224;
                        for (int i5 = 0; i5 < 16; i5++) {
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5897f)) ^ ((cArr3[0] >>> 5) + f5898g)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5895d)) ^ ((cArr3[1] >>> 5) + f5896e)));
                            i4 -= 40503;
                        }
                        int i6 = o.f138;
                        cArr2[i6] = cArr3[0];
                        cArr2[i6 + 1] = cArr3[1];
                        o.f138 = i6 + 2;
                    } else {
                        str2 = new String(cArr2, 0, i2);
                    }
                }
            }
            return str2;
        }

        private void c(Activity activity) {
            int i2 = h + 37;
            i = i2 % 128;
            int i3 = i2 % 2;
            Iterator<jc> it = a().iterator();
            while (true) {
                if ((it.hasNext() ? '\n' : b4.R) != '\n') {
                    return;
                }
                int i4 = h + 15;
                i = i4 % 128;
                if ((i4 % 2 == 0 ? (char) 6 : (char) 7) == 6) {
                    it.next().mo272(activity);
                    throw null;
                }
                it.next().mo272(activity);
            }
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        private void m905(Activity activity) {
            this.k = new WeakReference<>(activity);
            t.m1044(new C0352a(activity));
            int i2 = i + 35;
            h = i2 % 128;
            if (i2 % 2 == 0) {
            } else {
                throw null;
            }
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        private void m906(Activity activity) {
            Iterator<jc> it;
            int i2 = i + 103;
            h = i2 % 128;
            if ((i2 % 2 != 0 ? (char) 31 : 'T') != 31) {
                it = a().iterator();
            } else {
                it = a().iterator();
                int i3 = 48 / 0;
            }
            while (true) {
                if ((it.hasNext() ? '&' : (char) 16) == 16) {
                    int i4 = h + 3;
                    i = i4 % 128;
                    int i5 = i4 % 2;
                    return;
                }
                it.next().mo273(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            try {
                synchronized (jb.class) {
                    if (this.k == null) {
                        m905(activity);
                        jb.class.notifyAll();
                    }
                }
                Iterator<jc> it = a().iterator();
                while (it.hasNext()) {
                    it.next().onActivityCreated(activity, bundle);
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", View.resolveSize(0, 0) + 30).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒ᬕ\uf0ab섽ᴭŶᯗ鐨\u0cd1", 26 - (ExpandableListView.getPackedPositionForGroup(0) > 0L ? 1 : (ExpandableListView.getPackedPositionForGroup(0) == 0L ? 0 : -1))).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            int i2 = i + 53;
            h = i2 % 128;
            int i3 = i2 % 2;
            try {
                Iterator<jc> it = a().iterator();
                while (it.hasNext()) {
                    int i4 = h + 121;
                    i = i4 % 128;
                    if ((i4 % 2 == 0 ? '#' : (char) 19) == '#') {
                        it.next().onActivityDestroyed(activity);
                        throw null;
                    }
                    it.next().onActivityDestroyed(activity);
                }
                int i5 = i + 69;
                h = i5 % 128;
                if (i5 % 2 != 0) {
                    throw null;
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", (ViewConfiguration.getLongPressTimeout() >> 16) + 30).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒틍☓ꎔ\uf392㫄幄㯅陭鐨\u0cd1", TextUtils.getTrimmedLength("") + 28).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            try {
                Iterator<jc> it = a().iterator();
                int i2 = h + 25;
                i = i2 % 128;
                int i3 = i2 % 2;
                while (true) {
                    if (!(it.hasNext())) {
                        return;
                    }
                    int i4 = i + 85;
                    h = i4 % 128;
                    int i5 = i4 % 2;
                    it.next().onActivityPaused(activity);
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", 30 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒ﯧỰ챧蹲ۖ햃ﻇ霈", 25 - (ViewConfiguration.getKeyRepeatDelay() >> 16)).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            try {
                m905(activity);
                Iterator<jc> it = a().iterator();
                int i2 = i + 65;
                h = i2 % 128;
                int i3 = i2 % 2;
                while (it.hasNext()) {
                    int i4 = i + 77;
                    h = i4 % 128;
                    if (i4 % 2 != 0) {
                        it.next().onActivityResumed(activity);
                        throw null;
                    }
                    it.next().onActivityResumed(activity);
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", TextUtils.getTrimmedLength("") + 30).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒홨ꃸꎔ\uf392ㆥꖥ鐨\u0cd1", (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 26).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            int i2 = h + 31;
            i = i2 % 128;
            int i3 = i2 % 2;
            try {
                Iterator<jc> it = a().iterator();
                while (true) {
                    if ((it.hasNext() ? '$' : '`') == '`') {
                        int i4 = h + 91;
                        i = i4 % 128;
                        int i5 = i4 % 2;
                        return;
                    }
                    it.next().onActivitySaveInstanceState(activity, bundle);
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", 30 - (ViewConfiguration.getMaximumFlingVelocity() >> 16)).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒暪ᨉ隺\uf2b3皓Ӧ\ua63f剆嫔\ue50e\ud835緰膩䉉嫔\ue50e\udac0줮", (Process.myTid() >> 22) + 36).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            try {
                if (this.k == null) {
                    m905(activity);
                }
                synchronized (this) {
                    this.j.put(activity, Boolean.TRUE);
                }
                Iterator<jc> it = a().iterator();
                while (it.hasNext()) {
                    it.next().onActivityStarted(activity);
                }
                if (activity.getLocalClassName().equals(b("\uf7ad瞚洝屼䗴렺䶼넒䢦뙘蠗㩟좥\uf43eⓜ\ue06dˬ㧎䗈獳櫩笶贚ꙛ錺税ⓜ\ue06dˬ㧎脖㓄\ueca9阎侢\ue547ꁭ\ue63e᭘侦䶼넒\ue931㌆", (ViewConfiguration.getPressedStateDuration() >> 16) + 43).intern())) {
                    return;
                }
                synchronized (this) {
                    if (this.j.size() == 1 && !this.b) {
                        m906(activity);
                    }
                }
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 30).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒暪ᨉ嫔\ue50e͑ꭧ鐨\u0cd1", 26 - (ViewConfiguration.getScrollDefaultDelay() >> 16)).intern(), (Throwable) e2, false);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            try {
                Iterator<jc> it = a().iterator();
                while (it.hasNext()) {
                    it.next().onActivityStopped(activity);
                }
                this.b = activity.isChangingConfigurations();
                int size = -1;
                synchronized (this) {
                    if (this.j.containsKey(activity) && !activity.getLocalClassName().equals(b("\uf7ad瞚洝屼䗴렺䶼넒䢦뙘蠗㩟좥\uf43eⓜ\ue06dˬ㧎䗈獳櫩笶贚ꙛ錺税ⓜ\ue06dˬ㧎脖㓄\ueca9阎侢\ue547ꁭ\ue63e᭘侦䶼넒\ue931㌆", 43 - Color.red(0)).intern())) {
                        this.j.remove(activity);
                        size = this.j.size();
                    }
                }
                if (size < 0 || size != 0 || this.b) {
                    return;
                }
                c(activity);
            } catch (Exception e2) {
                jy.m987(b("⽕繙䵂蠝걉\ud9fd愾˛跅툚▉וֹ構뉍\udb26绗䪕멺\udac0줮縭\ue732艍ᐶˬ㧎覷ѿ苏븩", (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 30).intern(), b("똖㸼\ude4fꏕᵩ㪬ⴜﾭꢊ슠哓\ud885ꁭ\ue63e᭘侦䶼넒暪ᨉ搕뱽\ue47c늀鐨\u0cd1", Color.rgb(0, 0, 0) + 16777242).intern(), (Throwable) e2, false);
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ﻐ */
        public final synchronized void mo900(Application application, Activity activity) {
            if (this.l == null) {
                this.l = new WeakReference<>(application);
                if (activity != null) {
                    m905(activity);
                    synchronized (this) {
                        this.j.put(activity, Boolean.TRUE);
                    }
                }
                application.registerActivityLifecycleCallbacks(this);
            }
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ﻛ */
        public final Activity mo902() {
            int i2 = h + 17;
            i = i2 % 128;
            if ((i2 % 2 == 0 ? '\\' : (char) 1) == '\\') {
                throw null;
            }
            WeakReference<Activity> weakReference = this.k;
            if (weakReference == null) {
                return null;
            }
            Activity activity = weakReference.get();
            int i3 = i + 91;
            h = i3 % 128;
            if (i3 % 2 == 0) {
                return activity;
            }
            throw null;
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ｋ */
        public final synchronized boolean mo903() {
            int i2 = h + 33;
            i = i2 % 128;
            if ((i2 % 2 == 0 ? (char) 6 : (char) 0) != 0) {
                this.j.size();
                throw null;
            }
            if (!(this.j.size() > 0)) {
                return false;
            }
            int i3 = i + 5;
            h = i3 % 128;
            int i4 = i3 % 2;
            return true;
        }
    }

    static class b extends jb {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static char f5900d = 369;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static char f5901e = 5152;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static char f5902f = 28234;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static char f5903g = 24206;
        private static int h = 0;
        private static int i = 1;
        private Context j;

        private b() {
        }

        /* synthetic */ b(byte b) {
            this();
        }

        private static String b(String str, int i2) {
            String str2;
            Object charArray = str;
            if (str != null) {
                charArray = str.toCharArray();
            }
            char[] cArr = (char[]) charArray;
            synchronized (o.f139) {
                char[] cArr2 = new char[cArr.length];
                o.f138 = 0;
                char[] cArr3 = new char[2];
                while (true) {
                    int i3 = o.f138;
                    if (i3 < cArr.length) {
                        cArr3[0] = cArr[i3];
                        cArr3[1] = cArr[i3 + 1];
                        int i4 = 58224;
                        for (int i5 = 0; i5 < 16; i5++) {
                            cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i4) ^ ((cArr3[0] << 4) + f5902f)) ^ ((cArr3[0] >>> 5) + f5903g)));
                            cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i4) ^ ((cArr3[1] << 4) + f5900d)) ^ ((cArr3[1] >>> 5) + f5901e)));
                            i4 -= 40503;
                        }
                        int i6 = o.f138;
                        cArr2[i6] = cArr3[0];
                        cArr2[i6 + 1] = cArr3[1];
                        o.f138 = i6 + 2;
                    } else {
                        str2 = new String(cArr2, 0, i2);
                    }
                }
            }
            return str2;
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ﻐ */
        public final synchronized void mo900(Application application, Activity activity) {
            int i2 = i;
            int i3 = i2 + 115;
            h = i3 % 128;
            if (i3 % 2 != 0) {
                throw null;
            }
            if (application != null) {
                this.j = application.getApplicationContext();
                return;
            }
            if (!(activity == null)) {
                int i4 = i2 + 71;
                h = i4 % 128;
                if (i4 % 2 != 0) {
                    this.j = activity.getApplicationContext();
                    throw null;
                }
                this.j = activity.getApplicationContext();
            }
            return;
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ﻛ */
        public final Activity mo902() {
            int i2 = i;
            int i3 = i2 + 17;
            h = i3 % 128;
            int i4 = i3 % 2;
            int i5 = i2 + 111;
            h = i5 % 128;
            int i6 = i5 % 2;
            return null;
        }

        @Override // com.json.adqualitysdk.sdk.i.jb
        /* JADX INFO: renamed from: ｋ */
        public final boolean mo903() {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.j.getSystemService(b("ﭽ辑刿\ud9ef瞄佛㺊闳", (KeyEvent.getMaxKeyCode() >> 16) + 8).intern())).getRunningAppProcesses();
            if ((runningAppProcesses == null ? (char) 17 : '7') != '7') {
                int i2 = i;
                int i3 = i2 + 121;
                h = i3 % 128;
                int i4 = i3 % 2;
                int i5 = i2 + 21;
                h = i5 % 128;
                if (i5 % 2 == 0) {
                    return false;
                }
                throw null;
            }
            String packageName = this.j.getPackageName();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    if (!(!runningAppProcessInfo.processName.equals(packageName))) {
                        return true;
                    }
                }
            }
            int i6 = i + 101;
            h = i6 % 128;
            int i7 = i6 % 2;
            return false;
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static synchronized jb m899() {
        if (a == null) {
            byte b2 = 0;
            a = Build.VERSION.SDK_INT >= 14 ? new a(b2) : new b(b2);
        }
        return a;
    }

    protected final synchronized List<jc> a() {
        return new ArrayList(this.c);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public abstract void mo900(Application application, Activity activity);

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized void m901(jc jcVar) {
        this.c.remove(jcVar);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public abstract Activity mo902();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public abstract boolean mo903();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m904(jc jcVar) {
        this.c.add(jcVar);
    }
}
