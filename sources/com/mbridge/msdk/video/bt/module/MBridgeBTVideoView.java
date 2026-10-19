package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.iab.omid.library.mmadbridge.adsession.media.Position;
import com.iab.omid.library.mmadbridge.adsession.media.VastProperties;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.videocommon.download.c;
import com.mbridge.msdk.widget.FeedBackButton;
import java.io.File;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeBTVideoView extends BTBaseView {
    private static boolean K;
    private AdSession A;
    private MediaEvents B;
    private AdEvents C;
    private a D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private String J;
    private boolean L;
    private boolean M;
    private boolean N;
    private RelativeLayout O;
    private ProgressBar P;
    private PlayerView p;
    private SoundImageView q;
    private TextView r;
    private View s;
    private FeedBackButton t;
    private ImageView u;
    private WebView v;
    private com.mbridge.msdk.videocommon.download.a w;
    private int x;
    private int y;
    private int z;

    private static final class a extends DefaultVideoPlayerStatusListener {
        private MBridgeBTVideoView a;
        private WebView b;
        private MediaEvents c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7497d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7498e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f7499f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7500g;
        private boolean h;
        private int l;
        private int m;
        private boolean i = false;
        private boolean j = false;
        private boolean k = false;
        private boolean n = false;

        public a(MBridgeBTVideoView mBridgeBTVideoView, WebView webView, MediaEvents mediaEvents) {
            this.a = mBridgeBTVideoView;
            this.b = webView;
            this.c = mediaEvents;
            if (mBridgeBTVideoView != null) {
                this.f7497d = mBridgeBTVideoView.f7484d;
                this.f7498e = mBridgeBTVideoView.c;
            }
        }

        public final void a(int i, int i2) {
            int i3;
            MBridgeBTVideoView mBridgeBTVideoView;
            CampaignEx campaignEx;
            String str;
            this.l = i;
            this.m = i2;
            if (!ac.a().a("h_c_r_w_p_c", false) || (i3 = this.l) == 100 || this.m != 0 || this.n || i3 == 0 || (mBridgeBTVideoView = this.a) == null || (campaignEx = mBridgeBTVideoView.b) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.a.b.getAdType() == 287) {
                    str = this.a.b.getRequestId() + this.a.b.getId() + this.a.b.getVideoUrlEncode();
                } else {
                    str = this.a.b.getId() + this.a.b.getVideoUrlEncode() + this.a.b.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = c.getInstance().a(this.f7498e, str);
                if (aVarA != null) {
                    aVarA.o();
                    this.n = true;
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultVideoPlayerStatusListener", "CDRate is : 0  and start download when player create!");
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("DefaultVideoPlayerStatusListener", e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                MediaEvents mediaEvents = this.c;
                if (mediaEvents != null) {
                    mediaEvents.bufferFinish();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                MediaEvents mediaEvents = this.c;
                if (mediaEvents != null) {
                    mediaEvents.bufferStart();
                }
                if ((str.equals(PlayerErrorConstant.PREPARE_TIMEOUT) || str.equals(PlayerErrorConstant.PLAYERING_TIMEOUT)) && this.b != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", BTBaseView.n);
                        jSONObject.put("id", this.f7497d);
                        jSONObject.put("data", new JSONObject());
                        g.a().a(this.b, "onPlayerTimeout", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e2) {
                        com.mbridge.msdk.video.bt.a.c.a().a(this.b, e2.getMessage());
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayCompleted() {
            super.onPlayCompleted();
            MBridgeBTVideoView mBridgeBTVideoView = this.a;
            CampaignEx campaignEx = mBridgeBTVideoView.b;
            if (campaignEx == null) {
                mBridgeBTVideoView.r.setText("0");
            } else if (campaignEx.getVideoCompleteTime() > 0) {
                this.a.r.setText(t.a(b.d().g(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
            } else {
                this.a.r.setText("0");
            }
            this.a.p.setClickable(false);
            WebView webView = this.b;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerFinish", this.f7497d);
            }
            MediaEvents mediaEvents = this.c;
            if (mediaEvents != null) {
                mediaEvents.complete();
                aa.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f7499f = this.f7500g;
            boolean unused = MBridgeBTVideoView.K = true;
            this.a.stop();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayError(String str) {
            super.onPlayError(str);
            if (this.b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.o);
                    jSONObject.put("id", this.f7497d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error", str);
                    jSONObject2.put("id", this.f7497d);
                    jSONObject.put("data", jSONObject2);
                    g.a().a(this.b, "onPlayerFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e2) {
                    com.mbridge.msdk.video.bt.a.c.a().a(this.b, e2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayProgress(int i, int i2) {
            int i3;
            int i4;
            String str;
            StringBuilder sb;
            String str2;
            String string;
            super.onPlayProgress(i, i2);
            MBridgeBTVideoView mBridgeBTVideoView = this.a;
            if (mBridgeBTVideoView.h) {
                int videoCompleteTime = 0;
                CampaignEx campaignEx = mBridgeBTVideoView.b;
                if (campaignEx != null) {
                    videoCompleteTime = campaignEx.getVideoCompleteTime();
                    com.mbridge.msdk.foundation.c.b.a().a(this.a.b.getCampaignUnitId() + "_1", i);
                }
                if (videoCompleteTime > i2) {
                    videoCompleteTime = i2;
                }
                int i5 = videoCompleteTime <= 0 ? i2 - i : videoCompleteTime - i;
                if (i5 <= 0) {
                    string = videoCompleteTime <= 0 ? "0" : (String) this.a.getContext().getResources().getText(t.a(b.d().g(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                } else {
                    if (videoCompleteTime <= 0) {
                        sb = new StringBuilder();
                        sb.append(i5);
                        str2 = "";
                    } else {
                        sb = new StringBuilder();
                        sb.append(i5);
                        str2 = (String) this.a.getContext().getResources().getText(t.a(b.d().g(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                    }
                    sb.append(str2);
                    string = sb.toString();
                }
                this.a.r.setText(string);
            }
            this.f7500g = i2;
            this.f7499f = i;
            this.a.P.setMax(this.f7500g);
            this.a.P.setProgress(this.f7499f);
            if (this.b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.n);
                    jSONObject.put("id", this.f7497d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", this.f7497d);
                    jSONObject2.put("progress", MBridgeBTVideoView.b(i, i2));
                    jSONObject2.put("time", String.valueOf(i));
                    jSONObject2.put("duration", String.valueOf(i2));
                    jSONObject.put("data", jSONObject2);
                    g.a().a(this.b, "onPlayerProgressChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e2) {
                    com.mbridge.msdk.video.bt.a.c.a().a(this.b, e2.getMessage());
                }
            }
            MediaEvents mediaEvents = this.c;
            if (mediaEvents != null) {
                int i6 = (i * 100) / i2;
                int i7 = ((i + 1) * 100) / i2;
                if (i6 <= 25 && 25 < i7 && !this.i) {
                    this.i = true;
                    mediaEvents.firstQuartile();
                    aa.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i6 <= 50 && 50 < i7 && !this.j) {
                    this.j = true;
                    mediaEvents.midpoint();
                    aa.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i6 <= 75 && 75 < i7 && !this.k) {
                    this.k = true;
                    mediaEvents.thirdQuartile();
                    aa.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            try {
                int i8 = this.l;
                if (i8 == 100 || this.n || i8 == 0 || (i3 = this.m) < 0 || i < (i4 = (i2 * i3) / 100)) {
                    return;
                }
                if (this.a.b.getAdType() == 94 || this.a.b.getAdType() == 287) {
                    str = this.a.b.getRequestId() + this.a.b.getId() + this.a.b.getVideoUrlEncode();
                } else {
                    str = this.a.b.getId() + this.a.b.getVideoUrlEncode() + this.a.b.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = c.getInstance().a(this.f7498e, str);
                if (aVarA != null) {
                    aVarA.o();
                    this.n = true;
                    aa.d("DefaultVideoPlayerStatusListener", "CDRate is : " + i4 + " and start download !");
                }
            } catch (Exception e3) {
                aa.d("DefaultVideoPlayerStatusListener", e3.getMessage());
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayStarted(int i) {
            super.onPlayStarted(i);
            if (!this.h) {
                this.a.P.setMax(i);
                WebView webView = this.b;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f7497d);
                }
                this.h = true;
            }
            boolean unused = MBridgeBTVideoView.K = false;
        }
    }

    public MBridgeBTVideoView(Context context) {
        super(context);
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.L = false;
        this.M = false;
        this.N = false;
    }

    public MBridgeBTVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.L = false;
        this.M = false;
        this.N = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i, int i2) {
        if (i2 != 0) {
            try {
                return af.a(Double.valueOf(i / i2)) + "";
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return i2 + "";
    }

    private boolean b() {
        try {
            this.p = (PlayerView) findViewById(findID("mbridge_vfpv"));
            this.q = (SoundImageView) findViewById(findID("mbridge_sound_switch"));
            this.r = (TextView) findViewById(findID("mbridge_tv_count"));
            this.s = findViewById(findID("mbridge_rl_playing_close"));
            this.O = (RelativeLayout) findViewById(findID("mbridge_top_control"));
            this.P = (ProgressBar) findViewById(findID("mbridge_video_progress_bar"));
            this.t = (FeedBackButton) findViewById(findID("mbridge_native_endcard_feed_btn"));
            this.u = (ImageView) findViewById(findID("mbridge_iv_link"));
            this.p.setIsBTVideo(true);
            return isNotNULL(this.p, this.q, this.r, this.s);
        } catch (Throwable th) {
            aa.b(BTBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    private String c() {
        String videoUrlEncode = "";
        try {
            videoUrlEncode = this.b.getVideoUrlEncode();
            com.mbridge.msdk.videocommon.download.a aVar = this.w;
            if (aVar == null) {
                return videoUrlEncode;
            }
            String strH = aVar.h();
            return !ak.a(strH) ? new File(strH).exists() ? strH : videoUrlEncode : videoUrlEncode;
        } catch (Throwable th) {
            aa.b(BTBaseView.TAG, th.getMessage(), th);
            return videoUrlEncode;
        }
    }

    private int d() {
        try {
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            if (aVarB == null) {
                com.mbridge.msdk.videocommon.d.b.a().c();
            }
            iH = aVarB != null ? (int) aVarB.h() : 5;
            aa.b(BTBaseView.TAG, "MBridgeBaseView buffetTimeout:" + iH);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return iH;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    protected final void a() {
        super.a();
        if (this.h) {
            this.q.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean zIsSilent = MBridgeBTVideoView.this.p.isSilent();
                    if (MBridgeBTVideoView.this.v != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("code", BTBaseView.n);
                            jSONObject.put("id", MBridgeBTVideoView.this.f7484d);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, MBridgeBTVideoView.this.E);
                            jSONObject.put("data", jSONObject2);
                            g.a().a(MBridgeBTVideoView.this.v, "onPlayerMuteBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                            aa.a("OperateViews", "onPlayerMuteBtnClicked isMute = " + zIsSilent + " mute = " + MBridgeBTVideoView.this.E);
                        } catch (Exception e2) {
                            com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTVideoView.this.v, e2.getMessage());
                        }
                    }
                }
            });
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (MBridgeBTVideoView.this.v != null) {
                        BTBaseView.a(MBridgeBTVideoView.this.v, "onPlayerCloseBtnClicked", MBridgeBTVideoView.this.f7484d);
                    }
                }
            });
            setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (MBridgeBTVideoView.this.B != null) {
                        MBridgeBTVideoView.this.B.adUserInteraction(InteractionType.CLICK);
                    }
                    if (MBridgeBTVideoView.this.v != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("code", BTBaseView.n);
                            jSONObject.put("id", MBridgeBTVideoView.this.f7484d);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("x", String.valueOf(view.getX()));
                            jSONObject2.put("y", String.valueOf(view.getY()));
                            jSONObject.put("data", jSONObject2);
                            g.a().a(MBridgeBTVideoView.this.v, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        } catch (Exception unused) {
                            com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTVideoView.this.v, "onClicked", MBridgeBTVideoView.this.f7484d);
                        }
                    }
                }
            });
        }
    }

    public int getMute() {
        return this.E;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (iFindLayout > 0) {
            this.f7486f.inflate(iFindLayout, this);
            boolean zB = b();
            this.h = zB;
            if (!zB) {
                aa.d(BTBaseView.TAG, "MBridgeVideoView init fail");
            }
            a();
        }
        K = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        View rootView;
        super.onAttachedToWindow();
        if (!this.N) {
            this.H = com.mbridge.msdk.video.bt.a.c.a().e(this.c);
        }
        View view = this.s;
        if (view != null) {
            view.setVisibility(this.y == 0 ? 8 : 0);
        }
        SoundImageView soundImageView = this.q;
        if (soundImageView != null) {
            soundImageView.setVisibility(this.z == 0 ? 8 : 0);
        }
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.c);
            com.mbridge.msdk.foundation.c.b.a().a(this.c + "_1", this.b);
        }
        TextView textView = this.r;
        if (textView != null) {
            textView.setVisibility(this.x != 0 ? 0 : 8);
            if (this.r.getVisibility() == 0 && com.mbridge.msdk.foundation.c.b.a().b()) {
                com.mbridge.msdk.foundation.c.b.a().a(this.c + "_1", this.t);
            }
        }
        if (this.A == null || (rootView = getRootView()) == null) {
            return;
        }
        this.A.removeFriendlyObstruction(rootView);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                playerView.setOnClickListener(null);
                this.p.release();
                this.p = null;
                m.a().a("2000146", this.b, new HashMap());
            }
            SoundImageView soundImageView = this.q;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(null);
            }
            View view = this.s;
            if (view != null) {
                view.setOnClickListener(null);
            }
            if (this.v != null) {
                this.v = null;
            }
            if (this.A != null) {
                this.A = null;
            }
            if (this.B != null) {
                this.B = null;
            }
            setOnClickListener(null);
        } catch (Throwable th) {
            aa.a(BTBaseView.TAG, th.getMessage());
        }
    }

    public void onPause() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            boolean zIsPlayIng = playerView.isPlayIng();
            this.M = zIsPlayIng;
            this.p.setIsBTVideoPlaying(zIsPlayIng);
            this.p.onPause();
        }
    }

    public void onResume() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setIsCovered(false);
            this.p.setDesk(true);
            if (this.M) {
                this.p.start(true);
            }
        }
    }

    public void onStop() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setIsCovered(true);
        }
    }

    public void pause() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                playerView.pause();
                MediaEvents mediaEvents = this.B;
                if (mediaEvents != null) {
                    mediaEvents.pause();
                    aa.a("omsdk", "play:  videoEvents.pause()");
                }
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPause", this.f7484d);
                }
            }
        } catch (Exception e2) {
            aa.b(BTBaseView.TAG, e2.getMessage(), e2);
        }
    }

    public void play() {
        a aVar;
        CampaignEx campaignEx;
        try {
            if (this.N) {
                if (this.G) {
                    this.p.playVideo(0);
                    this.G = false;
                } else {
                    this.p.start(false);
                }
                try {
                    MediaEvents mediaEvents = this.B;
                    if (mediaEvents != null) {
                        mediaEvents.resume();
                        aa.a("omsdk", "play:  videoEvents.resume()");
                    }
                } catch (IllegalArgumentException e2) {
                    aa.a(BTBaseView.TAG, e2.getMessage());
                }
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.f7484d);
                    return;
                }
                return;
            }
            String strC = c();
            this.J = strC;
            this.p.initVFPData(strC, this.b.getVideoUrlEncode(), this.D);
            if (this.H == 1) {
                playMute();
            } else {
                playUnMute();
            }
            try {
                AdEvents adEvents = this.C;
                if (adEvents != null) {
                    adEvents.impressionOccurred();
                }
                if (this.B != null) {
                    float duration = this.p.getDuration();
                    if (duration == 0.0f && (campaignEx = this.b) != null) {
                        duration = campaignEx.getVideoLength();
                    }
                    this.B.start(duration, getMute() == 2 ? 1.0f : 0.0f);
                    aa.a("omsdk", "play: videoEvents.start()");
                }
            } catch (IllegalArgumentException e3) {
                aa.a(BTBaseView.TAG, e3.getMessage());
            }
            if (!this.p.playVideo() && (aVar = this.D) != null) {
                aVar.onPlayError("play video failed");
            }
            this.N = true;
            return;
        } catch (Exception e4) {
            aa.b(BTBaseView.TAG, e4.getMessage(), e4);
        }
        aa.b(BTBaseView.TAG, e4.getMessage(), e4);
    }

    public boolean playMute() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null && this.v != null) {
                playerView.closeSound();
                this.q.setSoundStatus(false);
                this.E = 1;
                try {
                    MediaEvents mediaEvents = this.B;
                    if (mediaEvents != null) {
                        mediaEvents.volumeChange(0.0f);
                    }
                } catch (IllegalArgumentException e2) {
                    aa.a("OMSDK", e2.getMessage());
                }
                BTBaseView.a(this.v, "onPlayerMute", this.f7484d);
                return true;
            }
        } catch (Exception e3) {
            aa.d(BTBaseView.TAG, e3.getMessage());
        }
        return false;
    }

    public boolean playUnMute() {
        try {
            PlayerView playerView = this.p;
            if (playerView == null || this.v == null) {
                return false;
            }
            playerView.openSound();
            this.q.setSoundStatus(true);
            this.E = 2;
            try {
                MediaEvents mediaEvents = this.B;
                if (mediaEvents != null) {
                    mediaEvents.volumeChange(1.0f);
                }
            } catch (IllegalArgumentException e2) {
                aa.a("OMSDK", e2.getMessage());
            }
            BTBaseView.a(this.v, "onUnmute", this.f7484d);
            return true;
        } catch (Exception e3) {
            aa.d(BTBaseView.TAG, e3.getMessage());
            return false;
        }
    }

    public void preLoadData() {
        String str;
        if (this.b.getAdType() == 94 || this.b.getAdType() == 287) {
            str = this.b.getRequestId() + this.b.getId() + this.b.getVideoUrlEncode();
        } else {
            str = this.b.getId() + this.b.getVideoUrlEncode() + this.b.getBidToken();
        }
        com.mbridge.msdk.videocommon.download.a aVarA = c.getInstance().a(this.c, str);
        if (aVarA != null) {
            this.w = aVarA;
        }
        this.F = d();
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isActiveOm()) {
                this.A = com.mbridge.msdk.a.b.a(getContext(), false, this.b.getOmid(), this.b.getRequestId(), this.b.getId(), this.c, "", this.b.getRequestIdNotice());
            }
            AdSession adSession = this.A;
            if (adSession != null) {
                PlayerView playerView = this.p;
                if (playerView != null) {
                    adSession.registerAdView(playerView);
                }
                SoundImageView soundImageView = this.q;
                if (soundImageView != null) {
                    this.A.addFriendlyObstruction(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                }
                TextView textView = this.r;
                if (textView != null) {
                    this.A.addFriendlyObstruction(textView, FriendlyObstructionPurpose.OTHER, null);
                }
                View view = this.s;
                if (view != null) {
                    this.A.addFriendlyObstruction(view, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
                }
                this.C = AdEvents.createAdEvents(this.A);
                this.B = MediaEvents.createMediaEvents(this.A);
                this.A.start();
                this.C.loaded(VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE));
            }
        } catch (Throwable th) {
            aa.a(BTBaseView.TAG, th.getMessage());
        }
        String strC = c();
        this.J = strC;
        if (this.h && !TextUtils.isEmpty(strC) && this.b != null) {
            AdSession adSession2 = this.A;
            if (adSession2 != null) {
                adSession2.registerAdView(this.p);
                AdSession adSession3 = this.A;
                SoundImageView soundImageView2 = this.q;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                adSession3.addFriendlyObstruction(soundImageView2, friendlyObstructionPurpose, null);
                this.A.addFriendlyObstruction(this.r, friendlyObstructionPurpose, null);
                this.A.addFriendlyObstruction(this.s, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            a aVar = new a(this, this.v, this.B);
            this.D = aVar;
            CampaignEx campaignEx2 = this.b;
            int iR = (campaignEx2 == null || campaignEx2.getReady_rate() == -1) ? com.mbridge.msdk.videocommon.d.b.a().a(b.d().h(), this.c, false).r() : campaignEx2.getReady_rate();
            aVar.a(iR, com.mbridge.msdk.videocommon.d.b.a().a(b.d().h(), this.c, false).s());
            this.p.setDesk(false);
            this.p.initBufferIngParam(this.F);
            soundOperate(this.E, -1, null);
        }
        K = false;
    }

    public void resume() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                if (this.G) {
                    playerView.playVideo(0);
                    this.G = false;
                } else {
                    playerView.onResume();
                }
                try {
                    MediaEvents mediaEvents = this.B;
                    if (mediaEvents != null) {
                        mediaEvents.resume();
                        aa.a("omsdk", "play:  videoEvents.resume()");
                    }
                } catch (IllegalArgumentException e2) {
                    aa.a(BTBaseView.TAG, e2.getMessage());
                }
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerResume", this.f7484d);
                }
            }
        } catch (Exception e3) {
            aa.d(BTBaseView.TAG, e3.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        if (campaignEx == null || campaignEx.getVideoCompleteTime() <= 0) {
            this.r.setBackgroundResource(t.a(b.d().g(), "mbridge_reward_shape_progress", "drawable"));
            this.r.setWidth(af.b(b.d().g(), 30.0f));
            return;
        }
        this.r.setBackgroundResource(t.a(b.d().g(), "mbridge_reward_video_time_count_num_bg", "drawable"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, af.b(b.d().g(), 30.0f));
        int iB = af.b(b.d().g(), 5.0f);
        layoutParams.setMargins(iB, 0, 0, 0);
        this.r.setPadding(iB, 0, iB, 0);
        this.r.setLayoutParams(layoutParams);
    }

    public void setCloseViewVisable(int i) {
        this.s.setVisibility(i == 0 ? 4 : 0);
    }

    public void setCountDownTextViewVisable(int i) {
        this.r.setVisibility(i == 0 ? 4 : 0);
    }

    public void setCreateWebView(WebView webView) {
        this.v = webView;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        if (i <= 0) {
            i = this.O.getPaddingLeft();
        }
        if (i2 <= 0) {
            i2 = this.O.getPaddingRight();
        }
        if (i3 <= 0) {
            i3 = this.O.getPaddingTop();
        }
        if (i4 <= 0) {
            i4 = this.O.getPaddingBottom();
        }
        aa.d(BTBaseView.TAG, "NOTCH BTVideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        this.O.setPadding(i, i3, i2, i4);
    }

    public void setOrientation(int i) {
        this.I = i;
    }

    public void setPlaybackParams(float f2) {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setPlaybackParams(f2);
        }
    }

    public void setProgressBarState(int i) {
        ProgressBar progressBar = this.P;
        if (progressBar != null) {
            progressBar.setVisibility(i == 0 ? 8 : 0);
        }
    }

    public void setShowClose(int i) {
        this.y = i;
    }

    public void setShowMute(int i) {
        this.z = i;
    }

    public void setShowTime(int i) {
        this.x = i;
    }

    public void setSoundImageViewVisble(int i) {
        this.q.setVisibility(i == 0 ? 4 : 0);
    }

    public void setVolume(float f2, float f3) {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setVolume(f2, f3);
        }
    }

    public void soundOperate(int i, int i2, String str) {
        if (this.h) {
            this.E = i;
            if (i == 1) {
                this.q.setSoundStatus(false);
                this.p.closeSound();
            } else if (i == 2) {
                this.q.setSoundStatus(true);
                this.p.openSound();
            }
            if (i2 == 1) {
                this.q.setVisibility(8);
            } else if (i2 == 2) {
                this.q.setVisibility(0);
            }
        }
    }

    public void stop() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                playerView.pause();
                this.p.stop();
                this.G = true;
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerStop", this.f7484d);
                }
            }
        } catch (Exception e2) {
            aa.b(BTBaseView.TAG, e2.getMessage(), e2);
        }
    }
}
