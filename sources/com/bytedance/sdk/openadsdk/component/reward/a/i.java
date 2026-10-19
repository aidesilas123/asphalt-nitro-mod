package com.bytedance.sdk.openadsdk.component.reward.a;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.util.Log;
import android.view.View;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: RewardFullScreenManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {
    protected int a;
    private final com.bytedance.sdk.openadsdk.component.reward.a.a b;
    private boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f1324d;

    /* JADX INFO: compiled from: RewardFullScreenManager.java */
    private static abstract class a implements View.OnLayoutChangeListener {
        private int a;
        private int b;

        private a() {
        }

        abstract void a(int i, int i2);

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = i3 - i;
            int i10 = i4 - i2;
            if (i9 == this.a && i10 == this.b) {
                return;
            }
            this.a = i9;
            this.b = i10;
            a(i9, i10);
        }
    }

    public i(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.a = 0;
        this.b = aVar;
        c();
        try {
            this.a = ad.c(aVar.V, ad.a());
            aVar.V.requestWindowFeature(1);
            aVar.V.getWindow().addFlags(16777344);
            if (aVar.j == 2 || !ad.c((Activity) aVar.V)) {
                aVar.V.getWindow().addFlags(1024);
            }
        } catch (Throwable th) {
            Log.e("TTAD.RFSM", "init: ", th);
        }
    }

    private float[] b(int i) {
        float f2 = f();
        float fE = e();
        int i2 = this.b.j;
        if ((i2 == 1) != (f2 > fE)) {
            float f3 = f2 + fE;
            fE = f3 - fE;
            f2 = f3 - fE;
        }
        if (i2 == 1) {
            f2 -= i;
        } else {
            fE -= i;
        }
        return new float[]{fE, f2};
    }

    private void c() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.b;
        aVar.k = aVar.a.al();
        if (26 != Build.VERSION.SDK_INT) {
            com.bytedance.sdk.openadsdk.component.reward.a.a aVar2 = this.b;
            aVar2.j = aVar2.a.ak();
        } else if (this.b.V.getResources().getConfiguration().orientation == 1) {
            this.b.j = 1;
        } else {
            this.b.j = 2;
        }
    }

    @SuppressLint({"SourceLockedOrientationActivity"})
    private void d() {
        com.bytedance.sdk.openadsdk.component.reward.a.a aVar = this.b;
        if (aVar.j != 2) {
            aVar.V.setRequestedOrientation(1);
        } else if (aVar.n) {
            aVar.V.setRequestedOrientation(8);
        } else {
            aVar.V.setRequestedOrientation(0);
        }
    }

    private float e() {
        return ad.c(this.b.V, ad.j(this.b.V));
    }

    private float f() {
        return ad.c(this.b.V, ad.i(this.b.V));
    }

    public void a() {
        ad.a((Activity) this.b.V);
        this.b.V.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.i.3
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public void onSystemUiVisibilityChange(int i) {
                if (i == 0) {
                    try {
                        if (i.this.b.V.isFinishing()) {
                            return;
                        }
                        i.this.b.V.getWindow().getDecorView().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.i.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ad.a((Activity) i.this.b.V);
                            }
                        }, 2500L);
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.l.e("TTAD.RFSM", e2.getMessage());
                    }
                }
            }
        });
    }

    public void a(x xVar) {
        if (xVar != null && Build.VERSION.SDK_INT >= 21) {
            xVar.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.i.1
                @Override // java.lang.Runnable
                public void run() {
                    View viewFindViewById;
                    try {
                        View decorView = i.this.b.V.getWindow().getDecorView();
                        if (decorView == null || (viewFindViewById = decorView.findViewById(R.id.statusBarBackground)) == null) {
                            return;
                        }
                        viewFindViewById.setVisibility(8);
                    } catch (Exception unused) {
                    }
                }
            }, 300L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(boolean r11) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.a.i.a(boolean):void");
    }

    public float[] a(int i) {
        TTBaseVideoActivity tTBaseVideoActivity = this.b.V;
        View decorView = tTBaseVideoActivity.getWindow().getDecorView();
        float[] fArrB = {decorView.getWidth() - (decorView.getPaddingLeft() * 2), decorView.getHeight() - (decorView.getPaddingTop() * 2)};
        fArrB[0] = ad.c(tTBaseVideoActivity, fArrB[0]);
        fArrB[1] = ad.c(tTBaseVideoActivity, fArrB[1]);
        if (fArrB[0] < 10.0f || fArrB[1] < 10.0f) {
            com.bytedance.sdk.component.utils.l.b("TTAD.RFSM", "get root view size error, so run backup");
            fArrB = b(this.a);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 != 26 && i2 != 27 && tTBaseVideoActivity.getResources() != null && tTBaseVideoActivity.getResources().getConfiguration() != null) {
            if ((tTBaseVideoActivity.getResources().getConfiguration().orientation == 2 ? 2 : 1) != i) {
                if (i == 2) {
                    if (fArrB[0] < fArrB[1]) {
                        float f2 = fArrB[1];
                        fArrB[1] = fArrB[0];
                        fArrB[0] = f2;
                    }
                } else if (fArrB[0] > fArrB[1]) {
                    float f3 = fArrB[1];
                    fArrB[1] = fArrB[0];
                    fArrB[0] = f3;
                }
            }
        }
        return fArrB;
    }

    public void b() {
        if (this.f1324d != null) {
            this.b.V.getWindow().getDecorView().removeOnLayoutChangeListener(this.f1324d);
            this.f1324d = null;
        }
    }

    public void b(x xVar) {
        try {
            final boolean z = true;
            final boolean z2 = this.c && o.d().K() == 1;
            if (!this.c || !ad.c((Activity) this.b.V) || Build.VERSION.SDK_INT < 19) {
                z = false;
            }
            if (z || z2) {
                if (this.f1324d == null) {
                    this.f1324d = new a() { // from class: com.bytedance.sdk.openadsdk.component.reward.a.i.2
                        boolean a;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                        }

                        /* JADX WARN: Removed duplicated region for block: B:33:0x0102 A[Catch: all -> 0x0112, TryCatch #0 {all -> 0x0112, blocks: (B:2:0x0000, B:4:0x000b, B:6:0x001f, B:8:0x006a, B:10:0x0088, B:12:0x0097, B:14:0x00ab, B:15:0x00af, B:26:0x00e3, B:28:0x00e9, B:30:0x00ef, B:31:0x00f4, B:33:0x0102, B:16:0x00b2, B:18:0x00bc, B:20:0x00d0, B:22:0x00d4, B:23:0x00da, B:25:0x00de, B:34:0x0108, B:36:0x010c, B:7:0x0045), top: B:39:0x0000 }] */
                        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                        @Override // com.bytedance.sdk.openadsdk.component.reward.a.i.a
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                        */
                        void a(int r7, int r8) {
                            /*
                                Method dump skipped, instruction units count: 275
                                To view this dump change 'Code comments level' option to 'DEBUG'
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.a.i.AnonymousClass2.a(int, int):void");
                        }
                    };
                }
                this.b.V.getWindow().getDecorView().addOnLayoutChangeListener(this.f1324d);
            }
            this.c = false;
        } catch (Exception unused) {
        }
    }
}
