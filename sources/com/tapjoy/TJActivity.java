package com.tapjoy;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.tapjoy.internal.b6;
import com.tapjoy.internal.o5;
import com.tapjoy.internal.t1;
import com.tapjoy.internal.v1;

/* JADX INFO: loaded from: classes4.dex */
public class TJActivity extends Activity implements View.OnClickListener {
    public RelativeLayout.LayoutParams b;
    public TJCloseButton c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ProgressBar f7785d;
    public RelativeLayout a = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7786e = false;

    public static /* synthetic */ WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat;
    }

    public void b() {
    }

    public void c(boolean z) {
        TapjoyUtil.runOnMainThread(new o5(this, z));
    }

    public void d() {
        if (isFinishing()) {
            return;
        }
        new AlertDialog.Builder(this, R.style.Theme.Material.Light.Dialog.Alert).setMessage("An error occurred. Please try again later.").setPositiveButton("OK", new b6(this)).create().show();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        b();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 29) {
            ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), new OnApplyWindowInsetsListener() { // from class: com.tapjoy.d
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return TJActivity.a(view, windowInsetsCompat);
                }
            });
        }
        getWindow().setFlags(1024, 1024);
        getWindow().setFlags(16777216, 16777216);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.b = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.a = relativeLayout;
        relativeLayout.setLayoutParams(this.b);
        this.a.setBackgroundColor(0);
        this.f7785d = new ProgressBar(this, null, R.attr.progressBarStyleLarge);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.f7785d.setLayoutParams(layoutParams);
        TJCloseButton tJCloseButton = new TJCloseButton(this);
        this.c = tJCloseButton;
        tJCloseButton.setOnClickListener(this);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        if (v1.a.m) {
            this.f7786e = true;
            t1.a(this);
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        if (this.f7786e) {
            this.f7786e = false;
            t1.b(this);
        }
        super.onStop();
    }
}
