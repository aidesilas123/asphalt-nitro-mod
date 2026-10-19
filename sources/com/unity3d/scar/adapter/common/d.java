package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;

/* JADX INFO: compiled from: IScarAdapter.java */
/* JADX INFO: loaded from: classes4.dex */
public interface d {
    void a(Context context, boolean z, com.unity3d.scar.adapter.common.l.b bVar);

    void b(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.l.b bVar);

    void c(Context context, RelativeLayout relativeLayout, com.unity3d.scar.adapter.common.scarads.c cVar, int i, int i2, e eVar);

    void d(Activity activity, String str, String str2);

    void e(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, g gVar);

    void f(Context context, com.unity3d.scar.adapter.common.scarads.c cVar, f fVar);
}
