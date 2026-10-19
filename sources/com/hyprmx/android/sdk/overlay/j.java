package com.hyprmx.android.sdk.overlay;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.webkit.internal.AssetHelper;
import com.google.android.gms.drive.DriveFile;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.a1;
import com.hyprmx.android.sdk.utility.n0;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements i {
    public Context a;
    public final com.hyprmx.android.sdk.calendar.a b;
    public final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f4607e;

    public interface a {
        void onHyprMXBrowserClosed();

        void onHyprMXBrowserPresented();

        void onOutsideAppPresented();
    }

    public static final class b implements m {
        public b() {
        }

        @Override // com.hyprmx.android.sdk.overlay.m
        public final void a() {
            a aVar = j.this.f4607e;
            if (aVar != null) {
                aVar.onHyprMXBrowserPresented();
            }
            j.this.f4606d = true;
        }

        @Override // com.hyprmx.android.sdk.overlay.m
        public final void b() {
            a aVar = j.this.f4607e;
            if (aVar != null) {
                aVar.onHyprMXBrowserClosed();
            }
            j.this.f4606d = false;
        }

        @Override // com.hyprmx.android.sdk.overlay.m
        public final void onOutsideAppPresented() {
            a aVar = j.this.f4607e;
            if (aVar != null) {
                aVar.onOutsideAppPresented();
            }
        }
    }

    public j(Context context, com.hyprmx.android.sdk.calendar.a calendarEventController, boolean z) {
        Intrinsics.checkNotNullParameter(calendarEventController, "calendarEventController");
        this.a = context;
        this.b = calendarEventController;
        this.c = z;
    }

    public /* synthetic */ j(Context context, boolean z, int i) {
        this((i & 1) != 0 ? null : context, (i & 2) != 0 ? new com.hyprmx.android.sdk.calendar.a() : null, (i & 4) != 0 ? false : z);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final Object asyncSavePhoto(String str, Continuation<? super v> continuation) {
        Object objA;
        Context context = this.a;
        if (context == null) {
            return v.a;
        }
        com.hyprmx.android.sdk.core.j jVar = t.a.f4521g;
        n0 n0VarH = jVar != null ? jVar.a.H() : null;
        return (n0VarH == null || (objA = n0VarH.a(context, str, continuation)) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? v.a : objA;
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public final void createCalendarEvent(String data) {
        a aVar;
        Intrinsics.checkNotNullParameter(data, "data");
        Context context = this.a;
        if (context == null || !this.b.a(context, data) || (aVar = this.f4607e) == null) {
            return;
        }
        aVar.onOutsideAppPresented();
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void hyprMXBrowserClosed() {
        a aVar = this.f4607e;
        if (aVar != null) {
            aVar.onHyprMXBrowserClosed();
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public final void openOutsideApplication(String url) {
        a aVar;
        Intrinsics.checkNotNullParameter(url, "url");
        Context context = this.a;
        if (context == null || !a1.a(context, url) || (aVar = this.f4607e) == null) {
            return;
        }
        aVar.onOutsideAppPresented();
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public final void openShareSheet(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Context context = this.a;
        if (context == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", data);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        context.startActivity(Intent.createChooser(intent, null));
        a aVar = this.f4607e;
        if (aVar != null) {
            aVar.onOutsideAppPresented();
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void setOverlayPresented(boolean z) {
        this.f4606d = false;
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void showHyprMXBrowser(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        Context context = this.a;
        if (context == null) {
            return;
        }
        com.hyprmx.android.sdk.core.j jVar = t.a.f4521g;
        com.hyprmx.android.sdk.presentation.j jVarT = jVar != null ? jVar.a.t() : null;
        if (jVarT == null) {
            return;
        }
        if (this.c && this.f4606d) {
            HyprMXLog.d("HyprMX Overlay already presented.");
            return;
        }
        f fVarA = jVarT.a((g) null, viewModelIdentifier);
        String strA = fVarA.a();
        if (strA == null) {
            return;
        }
        fVarA.a(context);
        fVarA.a(new b());
        fVarA.b();
        Intent intent = new Intent(context, (Class<?>) HyprMXBrowserActivity.class);
        intent.putExtra("baseAdId", strA);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        try {
            context.startActivity(intent);
            m mVarR = fVarA.r();
            if (mVarR != null) {
                mVarR.a();
            }
        } catch (Exception unused) {
            HyprMXLog.d("Could not launch activity");
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public final void showPlatformBrowser(String url) {
        StringBuilder sb;
        Intrinsics.checkNotNullParameter(url, "url");
        Context context = this.a;
        if (context == null) {
            return;
        }
        if (this.c && this.f4606d) {
            HyprMXLog.d("HyprMX Overlay already presented.");
            return;
        }
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "builder.build()");
        try {
            if (context instanceof Application) {
                customTabsIntentBuild.intent.addFlags(DriveFile.MODE_READ_ONLY);
            }
            customTabsIntentBuild.launchUrl(context, Uri.parse(url));
            a aVar = this.f4607e;
            if (aVar != null) {
                aVar.onOutsideAppPresented();
            }
            this.f4606d = true;
        } catch (ActivityNotFoundException e2) {
            e = e2;
            sb = new StringBuilder("Could not find custom tab activity: ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.d(sb.toString());
        } catch (Exception e3) {
            e = e3;
            sb = new StringBuilder("Could not launch custom tab: ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.d(sb.toString());
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public final void showToast(int i) {
        Context context = this.a;
        if (context == null) {
            return;
        }
        Toast.makeText(context, context.getString(i), 0).show();
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public final void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
    }
}
