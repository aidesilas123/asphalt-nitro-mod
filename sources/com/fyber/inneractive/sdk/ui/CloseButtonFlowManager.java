package com.fyber.inneractive.sdk.ui;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;

/* JADX INFO: loaded from: classes2.dex */
public class CloseButtonFlowManager {
    public final View a;
    public final TextView b;
    public final View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f2725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameLayout f2726e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2727f = false;

    public class a implements View.OnClickListener {
        public final /* synthetic */ InneractiveFullscreenAdActivity a;

        public a(CloseButtonFlowManager closeButtonFlowManager, InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity) {
            this.a = inneractiveFullscreenAdActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.a.dismissAd(true);
        }
    }

    public CloseButtonFlowManager(InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity) {
        View viewFindViewById = inneractiveFullscreenAdActivity.findViewById(R.id.ia_fl_close_button);
        this.a = viewFindViewById;
        this.b = (TextView) inneractiveFullscreenAdActivity.findViewById(R.id.ia_tv_close_button);
        View viewFindViewById2 = inneractiveFullscreenAdActivity.findViewById(R.id.ia_clickable_close_button);
        this.c = viewFindViewById2;
        this.f2725d = (ImageView) inneractiveFullscreenAdActivity.findViewById(R.id.ia_iv_close_button);
        this.f2726e = (FrameLayout) inneractiveFullscreenAdActivity.findViewById(R.id.close_button_container);
        viewFindViewById.setVisibility(8);
        viewFindViewById2.setOnClickListener(new a(this, inneractiveFullscreenAdActivity));
    }
}
