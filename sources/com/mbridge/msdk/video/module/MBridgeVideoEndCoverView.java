package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.a;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.video.module.a.a.j;
import com.mbridge.msdk.video.signal.factory.b;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeVideoEndCoverView extends MBridgeBaseView {
    private final String n;
    private View o;
    private ImageView p;
    private ImageView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private b u;

    public MBridgeVideoEndCoverView(Context context) {
        super(context);
        this.n = "MBridgeVideoEndCoverView";
    }

    public MBridgeVideoEndCoverView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.n = "MBridgeVideoEndCoverView";
    }

    private boolean a(View view) {
        if (view == null) {
            return true;
        }
        try {
            this.p = (ImageView) view.findViewById(findID("mbridge_vec_iv_icon"));
            this.q = (ImageView) view.findViewById(findID("mbridge_vec_iv_close"));
            this.r = (TextView) view.findViewById(findID("mbridge_vec_tv_title"));
            this.s = (TextView) view.findViewById(findID("mbridge_vec_tv_desc"));
            this.t = (TextView) view.findViewById(findID("mbridge_vec_btn"));
            return true;
        } catch (Throwable th) {
            aa.d("MBridgeVideoEndCoverView", th.getMessage());
            return false;
        }
    }

    protected final void a() {
        JSONObject jSONObject;
        JSONException e2;
        JSONObject jSONObject2;
        JSONException e3;
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(a.f7094f, af.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.f7553g));
                    jSONObject2.put(a.f7095g, af.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.h));
                    jSONObject2.put(a.i, 0);
                    try {
                        this.f7550d = getContext().getResources().getConfiguration().orientation;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    jSONObject2.put(a.j, this.f7550d);
                    jSONObject2.put(a.k, af.e(getContext()));
                } catch (JSONException e5) {
                    e3 = e5;
                    aa.d("MBridgeVideoEndCoverView", e3.getMessage());
                }
            } catch (JSONException e6) {
                jSONObject2 = jSONObject3;
                e3 = e6;
            }
            jSONObject = new JSONObject();
            try {
                jSONObject.put(a.h, jSONObject2);
            } catch (JSONException e7) {
                e2 = e7;
                e2.printStackTrace();
            }
        } catch (JSONException e8) {
            jSONObject = null;
            e2 = e8;
        }
        this.f7551e.a(105, jSONObject);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected final void c() {
        super.c();
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MBridgeVideoEndCoverView.this.f7551e.a(104, "");
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MBridgeVideoEndCoverView.this.a();
            }
        });
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoEndCoverView.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MBridgeVideoEndCoverView.this.a();
            }
        });
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoend_cover");
        if (iFindLayout >= 0) {
            View viewInflate = this.c.inflate(iFindLayout, (ViewGroup) null);
            this.o = viewInflate;
            if (viewInflate != null) {
                this.f7552f = a(viewInflate);
                addView(this.o, -1, -1);
                c();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f7553g = motionEvent.getRawX();
        this.h = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f7550d = configuration.orientation;
        removeView(this.o);
        View view = this.o;
        if (view == null) {
            init(this.a);
            preLoadData(this.u);
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) this.o.getParent()).removeView(this.o);
        }
        addView(this.o);
        a(this.o);
        c();
    }

    public void preLoadData(b bVar) {
        ImageView imageView;
        this.u = bVar;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx == null || !this.f7552f || campaignEx == null) {
                return;
            }
            if (!TextUtils.isEmpty(campaignEx.getIconUrl()) && (imageView = this.p) != null) {
                com.mbridge.msdk.foundation.same.c.b.a(this.a.getApplicationContext()).a(this.b.getIconUrl(), new j(imageView, af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 8.0f)));
            }
            TextView textView = this.r;
            if (textView != null) {
                textView.setText(this.b.getAppName());
            }
            TextView textView2 = this.t;
            if (textView2 != null) {
                textView2.setText(this.b.getAdCall());
            }
            TextView textView3 = this.s;
            if (textView3 != null) {
                textView3.setText(this.b.getAppDesc());
            }
        } catch (Throwable th) {
            aa.a("MBridgeVideoEndCoverView", th.getMessage());
        }
    }
}
