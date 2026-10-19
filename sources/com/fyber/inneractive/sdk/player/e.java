package com.fyber.inneractive.sdk.player;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.c0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveVideoError;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.m;
import com.fyber.inneractive.sdk.model.vast.d;
import com.fyber.inneractive.sdk.model.vast.o;
import com.fyber.inneractive.sdk.model.vast.t;
import com.fyber.inneractive.sdk.network.j0;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.player.a;
import com.fyber.inneractive.sdk.player.c;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.player.h;
import com.fyber.inneractive.sdk.response.i;
import com.fyber.inneractive.sdk.util.IAlog;
import com.iab.omid.library.fyber.adsession.media.Position;
import com.iab.omid.library.fyber.adsession.media.VastProperties;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e extends com.fyber.inneractive.sdk.player.c implements a.InterfaceC0168a {
    public static final HashMap<String, c> B = new a();
    public boolean A;
    public final com.fyber.inneractive.sdk.model.vast.b v;
    public com.fyber.inneractive.sdk.player.enums.a w;
    public boolean x;
    public b0 y;
    public m z;

    public class a extends HashMap<String, c> {

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.e$a$a, reason: collision with other inner class name */
        public class C0173a implements c {
            public C0173a(a aVar) {
            }

            @Override // com.fyber.inneractive.sdk.player.e.c
            public String a(com.fyber.inneractive.sdk.player.controller.g gVar, VideoClickOrigin videoClickOrigin) {
                return videoClickOrigin.name().toLowerCase();
            }
        }

        public class b implements c {
            public b(a aVar) {
            }

            @Override // com.fyber.inneractive.sdk.player.e.c
            public String a(com.fyber.inneractive.sdk.player.controller.g gVar, VideoClickOrigin videoClickOrigin) {
                int iC;
                if (gVar == null || (iC = gVar.c()) <= 0) {
                    return "00:00:00.000";
                }
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                long j = iC;
                long hours = timeUnit.toHours(j);
                TimeUnit timeUnit2 = TimeUnit.HOURS;
                long minutes = timeUnit.toMinutes(j - timeUnit2.toMillis(hours));
                long millis = j - timeUnit2.toMillis(hours);
                TimeUnit timeUnit3 = TimeUnit.MINUTES;
                long seconds = timeUnit.toSeconds(millis - timeUnit3.toMillis(minutes));
                return String.format("%02d:%02d:%02d.%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(timeUnit.toMillis(((j - timeUnit2.toMillis(hours)) - timeUnit3.toMillis(minutes)) - TimeUnit.SECONDS.toMillis(seconds))));
            }
        }

        public a() {
            put("[CLICKAREA]", new C0173a(this));
            put("[ADPLAYHEAD]", new b(this));
        }
    }

    public static /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[com.fyber.inneractive.sdk.player.enums.a.values().length];
            c = iArr;
            try {
                iArr[com.fyber.inneractive.sdk.player.enums.a.Uninitialized.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[com.fyber.inneractive.sdk.player.enums.a.Started.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[com.fyber.inneractive.sdk.player.enums.a.FirstQuarter.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[com.fyber.inneractive.sdk.player.enums.a.MidPoint.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                c[com.fyber.inneractive.sdk.player.enums.a.ThirdPQuarter.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                c[com.fyber.inneractive.sdk.player.enums.a.Completed.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[com.fyber.inneractive.sdk.player.enums.b.values().length];
            b = iArr2;
            try {
                iArr2[com.fyber.inneractive.sdk.player.enums.b.Prepared.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                b[com.fyber.inneractive.sdk.player.enums.b.Playing.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[com.fyber.inneractive.sdk.player.enums.b.Completed.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr3 = new int[com.fyber.inneractive.sdk.model.vast.h.values().length];
            a = iArr3;
            try {
                iArr3[com.fyber.inneractive.sdk.model.vast.h.Default_End_Card.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[com.fyber.inneractive.sdk.model.vast.h.FMP_End_Card.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public interface c {
        String a(com.fyber.inneractive.sdk.player.controller.g gVar, VideoClickOrigin videoClickOrigin);
    }

    public e(Context context, com.fyber.inneractive.sdk.response.g gVar, b0 b0Var, InneractiveAdRequest inneractiveAdRequest, f0 f0Var, com.fyber.inneractive.sdk.measurement.a aVar) {
        super(context, b0Var == null ? null : ((a0) b0Var).b().c(), f0Var != null ? f0Var.b() : null);
        this.w = com.fyber.inneractive.sdk.player.enums.a.Uninitialized;
        this.A = false;
        if (gVar == null || gVar.e() == null) {
            throw new IllegalArgumentException("IAVastMediaPlayerFlowManager ctor - vastData can't be null");
        }
        this.f2139g = aVar;
        this.f2137e = f0Var;
        this.v = gVar.e();
        this.f2138f = inneractiveAdRequest;
        m mVar = new m(context, gVar, inneractiveAdRequest, this.f2137e.b(), a(gVar, b0Var));
        this.z = mVar;
        mVar.c();
        if (IAlog.a <= 3) {
            for (int i = 0; i < this.v.a(); i++) {
                o oVar = (o) ((ArrayList) this.v.b()).get(i);
                if (oVar != null) {
                    IAlog.a("IAVastMediaPlayerFlowManager(%d): %s", Integer.valueOf(i), oVar.a());
                }
            }
        }
        if (b0Var != null) {
            a(b0Var);
            a0 a0Var = (a0) b0Var;
            if (a0Var.a() != null) {
                a(((c0) a0Var.a()).b().booleanValue());
            }
        }
        if (f0Var == null || f0Var.b() == null) {
            this.s = IAConfigManager.c().a().a(gVar.a() == UnitDisplayType.INTERSTITIAL ? "prebuffer_interstitial" : "prebuffer_rewarded", 10, 0);
        } else {
            this.s = ((r) f0Var.b().a(r.class)).a(gVar.a());
        }
    }

    public static void a(i iVar, t... tVarArr) {
        ArrayList<String> arrayList = new ArrayList();
        for (t tVar : tVarArr) {
            String strE = tVar.e();
            IAlog.a("IAVastMediaPlayerFlowManager: Firing events for type: %s", strE);
            List<String> listA = ((com.fyber.inneractive.sdk.measurement.e) iVar).a(tVar);
            if (listA == null || listA.size() == 0) {
                IAlog.a("IAVastMediaPlayerFlowManager: no events for type: %s", strE);
            } else {
                arrayList.addAll(listA);
                IAlog.a("found %d events for type: %s", Integer.valueOf(listA.size()), strE);
                a(listA, tVar);
            }
        }
        for (String str : arrayList) {
            if (!TextUtils.isEmpty(str)) {
                j0.b(str);
            }
        }
    }

    public static void a(List<String> list, t tVar) {
        for (String str : list) {
            IAlog.a("   event url: %s", str);
            if (!TextUtils.isEmpty(str)) {
                int i = IAlog.a;
                IAlog.a(1, null, "%s %s %s", "VAST_EVENT", tVar.e(), str);
                IAlog.a(1, null, "Tracking URLs array: %s", "VPAID", str);
            }
        }
    }

    public final com.fyber.inneractive.sdk.flow.vast.b a(com.fyber.inneractive.sdk.response.g gVar, b0 b0Var) {
        UnitDisplayType unitDisplayType = gVar.n;
        InneractiveAdRequest inneractiveAdRequest = this.f2138f;
        return new com.fyber.inneractive.sdk.flow.vast.b(unitDisplayType, inneractiveAdRequest == null || inneractiveAdRequest.getAllowFullscreen(), gVar.f2720e, gVar.f2721f, b0Var);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.e
    public void a(int i) {
        int iD = this.b.d();
        b(i);
        int i2 = b.c[this.w.ordinal()];
        if (i2 == 1) {
            if (this.b.f2173e != com.fyber.inneractive.sdk.player.enums.b.Buffering) {
                a(com.fyber.inneractive.sdk.player.enums.a.Started);
                com.fyber.inneractive.sdk.measurement.d dVar = this.h;
                if (dVar != null) {
                    if (dVar.b != null && !dVar.f2051e) {
                        IAlog.a("%s impression", "OMVideo");
                        dVar.f2051e = true;
                        try {
                            dVar.b.impressionOccurred();
                        } catch (Throwable th) {
                            dVar.a(th);
                        }
                    }
                    com.fyber.inneractive.sdk.measurement.d dVar2 = this.h;
                    long jD = this.b.d();
                    float f2 = this.b.i() ? 0.0f : 1.0f;
                    if (dVar2.c == null || dVar2.f2050d) {
                        return;
                    }
                    dVar2.f2050d = true;
                    IAlog.a("%s start", "OMVideo");
                    try {
                        dVar2.c.start(jD, f2);
                        return;
                    } catch (Throwable th2) {
                        dVar2.a(th2);
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (i > iD / 4) {
                a(com.fyber.inneractive.sdk.player.enums.a.FirstQuarter);
                com.fyber.inneractive.sdk.measurement.d dVar3 = this.h;
                if (dVar3 == null || dVar3.c == null) {
                    return;
                }
                IAlog.a("%s firstQuartile", "OMVideo");
                try {
                    dVar3.c.firstQuartile();
                    return;
                } catch (Throwable th3) {
                    dVar3.a(th3);
                    return;
                }
            }
            return;
        }
        if (i2 == 3) {
            if (i > iD / 2) {
                a(com.fyber.inneractive.sdk.player.enums.a.MidPoint);
                com.fyber.inneractive.sdk.measurement.d dVar4 = this.h;
                if (dVar4 == null || dVar4.c == null) {
                    return;
                }
                IAlog.a("%s midpoint", "OMVideo");
                try {
                    dVar4.c.midpoint();
                    return;
                } catch (Throwable th4) {
                    dVar4.a(th4);
                    return;
                }
            }
            return;
        }
        if (i2 == 4 && i > (iD / 4) * 3) {
            a(com.fyber.inneractive.sdk.player.enums.a.ThirdPQuarter);
            com.fyber.inneractive.sdk.measurement.d dVar5 = this.h;
            if (dVar5 == null || dVar5.c == null) {
                return;
            }
            IAlog.a("%s thirdQuartile", "OMVideo");
            try {
                dVar5.c.thirdQuartile();
            } catch (Throwable th5) {
                dVar5.a(th5);
            }
        }
    }

    public void a(b0 b0Var) {
        this.y = b0Var;
    }

    @Override // com.fyber.inneractive.sdk.player.c
    public void a(InneractiveVideoError inneractiveVideoError, JSONObject jSONObject) {
        a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_ERROR);
        b(inneractiveVideoError, jSONObject);
        IAlog.e("IAMediaPlayerFlowManager: reporting error to listeners: %s", inneractiveVideoError.getPlayerError().toString());
        g gVar = this.r;
        if (gVar != null) {
            try {
                ((h) gVar).a(inneractiveVideoError, null, jSONObject, false);
            } catch (Exception e2) {
                if (IAlog.a <= 3) {
                    e2.printStackTrace();
                }
            }
        }
        com.fyber.inneractive.sdk.util.o oVar = this.l;
        if (oVar != null) {
            oVar.cancel(true);
            oVar.b = null;
            this.m = null;
        }
    }

    public final void a(com.fyber.inneractive.sdk.player.enums.a aVar) {
        if (this.w == aVar) {
            return;
        }
        if (aVar == com.fyber.inneractive.sdk.player.enums.a.Started) {
            this.x = false;
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_IMPRESSION, t.EVENT_START);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.FirstQuarter) {
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_FIRSTQ);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.MidPoint) {
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_MID);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.ThirdPQuarter) {
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_THIRDQ);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.Completed && !this.x) {
            this.x = true;
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_COMPLETE);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.Restarted) {
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_REWIND);
        } else if (aVar == com.fyber.inneractive.sdk.player.enums.a.Progress) {
            a(this.v, VideoClickOrigin.InvalidOrigin, t.EVENT_PROGRESS);
        }
        this.w = aVar;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void a(com.fyber.inneractive.sdk.player.enums.b bVar) {
        boolean z;
        String str;
        int i;
        T t;
        T t2;
        b0 b0Var;
        int i2 = 0;
        IAlog.a("IAMediaPlayerFlowManager: onPlayerStateChanged with - %s", bVar);
        f fVar = this.i;
        if (fVar != null && bVar != com.fyber.inneractive.sdk.player.enums.b.Prepared) {
            fVar.a(bVar);
        } else if (bVar == com.fyber.inneractive.sdk.player.enums.b.Prepared && fVar != null) {
            fVar.f2632d = true;
        }
        int i3 = c.b.a[bVar.ordinal()];
        if (i3 == 1) {
            IAlog.a("IAMediaPlayerFlowManager: onPlayerPrepared called", new Object[0]);
            if (this.o) {
                IAlog.a("IMediaPlayerFlowManager: onPlayerPrepared is called, but object is already destroyed?? ignore", new Object[0]);
            } else {
                if (this.b.a() && this.b.e() != null) {
                    a(this.b.e());
                }
                this.n = true;
                if (this.h != null && this.f2137e != null && (b0Var = this.y) != null) {
                    int iIntValue = ((a0) b0Var).f1942f.h.value().intValue();
                    boolean zA = com.fyber.inneractive.sdk.player.c.a(this.b.d(), this.y, ((com.fyber.inneractive.sdk.response.g) this.f2137e.b).w);
                    boolean zBooleanValue = ((a0) this.y).f1942f.a.booleanValue();
                    com.fyber.inneractive.sdk.measurement.d dVar = this.h;
                    if (!zA) {
                        iIntValue = 0;
                    }
                    if (dVar.b != null) {
                        try {
                            dVar.b.loaded(zA ? VastProperties.createVastPropertiesForSkippableMedia(iIntValue, zBooleanValue, Position.STANDALONE) : VastProperties.createVastPropertiesForNonSkippableMedia(zBooleanValue, Position.STANDALONE));
                        } catch (Throwable th) {
                            dVar.a(th);
                        }
                    }
                }
                if (this.r != null) {
                    f0 f0Var = this.f2137e;
                    if (f0Var == null || f0Var.b == 0 || this.f2138f == null) {
                        z = false;
                    } else {
                        z = com.fyber.inneractive.sdk.player.c.a(this.b.d(), this.y, ((com.fyber.inneractive.sdk.response.g) this.f2137e.b).w) && this.f2138f.getAllowFullscreen();
                        ((com.fyber.inneractive.sdk.response.g) this.f2137e.b).r.setVideo(new ImpressionData.Video(z, (int) TimeUnit.MILLISECONDS.toSeconds(this.b.d())));
                    }
                    try {
                        f0 f0Var2 = this.f2137e;
                        com.fyber.inneractive.sdk.response.g gVar = f0Var2 != null ? (com.fyber.inneractive.sdk.response.g) f0Var2.b : null;
                        com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.EVENT_READY_ON_CLIENT;
                        InneractiveAdRequest inneractiveAdRequest = this.f2138f;
                        f0 f0Var3 = this.f2137e;
                        s.a aVar = new s.a(rVar, inneractiveAdRequest, gVar, f0Var3 == null ? null : f0Var3.c.c());
                        if (this.t != null && gVar != null) {
                            IAlog.a("Video content loader: Vast load took: " + (System.currentTimeMillis() - gVar.J) + " msec", new Object[0]);
                            f0 f0Var4 = this.f2137e;
                            if (f0Var4 == null || (t2 = f0Var4.b) == 0 || ((com.fyber.inneractive.sdk.response.g) t2).K == null) {
                                str = "";
                                i = 0;
                            } else {
                                i2 = ((com.fyber.inneractive.sdk.response.g) t2).K.i;
                                i = ((com.fyber.inneractive.sdk.response.g) t2).K.j;
                                str = ((com.fyber.inneractive.sdk.response.g) t2).K.a;
                            }
                            String str2 = "0";
                            if (f0Var4 != null && (t = f0Var4.b) != 0 && !TextUtils.isEmpty(((com.fyber.inneractive.sdk.response.g) t).C)) {
                                str2 = ((com.fyber.inneractive.sdk.response.g) this.f2137e.b).C;
                            }
                            s.b bVar2 = new s.b();
                            bVar2.a("duration", Integer.valueOf(this.b.d() / 1000)).a("url", this.t.f2095g).a("bitrate", this.t.f2093e).a("mime", TextUtils.isEmpty(this.t.f2092d) ? "na" : this.t.f2092d).a("delivery", this.t.a).a("load_time", Long.valueOf(System.currentTimeMillis() - gVar.J)).a("media_file_index", Integer.valueOf(this.q)).a("player", this.b.f()).a("is_video_skippable", Boolean.valueOf(z)).a("supported_media_files", Integer.valueOf(i2)).a("total_media_files", Integer.valueOf(i)).a("vast_version", str);
                            if (str2 != null && str2.equals("1")) {
                                bVar2.a("hide_endcard", str2);
                            }
                            aVar.f2120f.put(bVar2.a);
                        }
                        aVar.a((String) null);
                    } catch (Exception unused) {
                    }
                    h hVar = (h) this.r;
                    if (!hVar.f2636g) {
                        hVar.f2636g = true;
                        h.b bVar3 = hVar.f2633d;
                        if (bVar3 != null) {
                            ((com.fyber.inneractive.sdk.flow.o) bVar3).h();
                        }
                    }
                }
            }
        } else if (i3 == 2) {
            IAlog.a("IAMediaPlayerFlowManager: onPlayerBuffering", new Object[0]);
        } else if (i3 == 3) {
            this.b.c();
        }
        int i4 = b.b[bVar.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                if (this.w.equals(com.fyber.inneractive.sdk.player.enums.a.Completed)) {
                    a(com.fyber.inneractive.sdk.player.enums.a.Restarted);
                    return;
                }
                return;
            } else {
                if (i4 != 3) {
                    return;
                }
                b(this.b.d());
                a(com.fyber.inneractive.sdk.player.enums.a.Completed);
                return;
            }
        }
        com.fyber.inneractive.sdk.model.vast.b bVar4 = this.v;
        if (bVar4 == null || bVar4.m.size() == 0) {
            return;
        }
        int iD = this.b.d();
        for (com.fyber.inneractive.sdk.model.vast.d dVar2 : this.v.m) {
            if (dVar2.c == -1) {
                dVar2.c = (dVar2.b() * iD) / 100;
            }
        }
        Collections.sort(this.v.m, new d.a());
    }

    @Override // com.fyber.inneractive.sdk.player.c
    public void a(i iVar, VideoClickOrigin videoClickOrigin, t... tVarArr) {
        if (tVarArr.length == 0) {
            IAlog.e("IAVastMediaPlayerFlowManager: eventTypes array is empty", new Object[0]);
            return;
        }
        if (iVar == null) {
            IAlog.e("IAVastMediaPlayerFlowManager: parser is null", new Object[0]);
            return;
        }
        ArrayList<String> arrayList = new ArrayList();
        for (t tVar : tVarArr) {
            String strE = tVar.e();
            IAlog.a("IAVastMediaPlayerFlowManager: Firing events for type: %s", strE);
            List<String> listA = iVar.a(tVar);
            if (listA == null || listA.size() == 0) {
                IAlog.a("IAVastMediaPlayerFlowManager: no events for type: %s", strE);
            } else {
                arrayList.addAll(listA);
                IAlog.a("found %d events for type: %s, url: %s", Integer.valueOf(listA.size()), strE, listA.get(0));
                a(listA, tVar);
            }
            if (tVar == t.EVENT_CLICK) {
                for (Map.Entry<String, c> entry : B.entrySet()) {
                    String key = entry.getKey();
                    String strA = entry.getValue().a(this.b, videoClickOrigin);
                    for (int i = 0; i < arrayList.size(); i++) {
                        String str = (String) arrayList.get(i);
                        if (str.contains(key)) {
                            arrayList.set(i, str.replace(key, strA));
                        }
                    }
                }
            }
        }
        for (String str2 : arrayList) {
            if (!TextUtils.isEmpty(str2)) {
                j0.b(str2);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.c
    public View b() {
        PriorityQueue<com.fyber.inneractive.sdk.flow.vast.a> priorityQueue;
        com.fyber.inneractive.sdk.flow.vast.a aVarPeek;
        m mVar = this.z;
        if (mVar == null || (priorityQueue = mVar.k) == null || priorityQueue.size() <= 0 || (aVarPeek = this.z.k.peek()) == null || !aVarPeek.a) {
            return null;
        }
        if (aVarPeek instanceof com.fyber.inneractive.sdk.flow.vast.e) {
            this.z.m = ((com.fyber.inneractive.sdk.flow.vast.e) aVarPeek).f2041g;
        }
        return aVarPeek.b;
    }

    public final void b(int i) {
        com.fyber.inneractive.sdk.model.vast.b bVar = this.v;
        if (bVar == null || bVar.m.isEmpty()) {
            return;
        }
        while (true) {
            if (!(this.v.m.size() > 0 && i >= this.v.m.get(0).c)) {
                return;
            }
            com.fyber.inneractive.sdk.model.vast.d dVar = this.v.m.get(0);
            String str = dVar.a;
            if (!TextUtils.isEmpty(str)) {
                IAlog.a("IAVastMediaPlayerFlowManager: Firing event for type: progress", new Object[0]);
                j0.b(str);
            }
            this.v.m.remove(dVar);
        }
    }

    public void b(InneractiveVideoError inneractiveVideoError, JSONObject jSONObject) {
        try {
            if (this.t != null && inneractiveVideoError.getPlayerError() != InneractiveVideoError.Error.ERROR_FAILED_PLAYING_ALL_MEDIA_FILES) {
                jSONObject.put("url", this.t.f2095g);
                jSONObject.put("bitrate", this.t.f2093e);
                jSONObject.put("mime", this.t.f2092d);
                jSONObject.put("delivery", this.t.a);
            }
            com.fyber.inneractive.sdk.player.controller.g gVar = this.b;
            jSONObject.put("player", gVar != null ? gVar.f() : "");
            if (inneractiveVideoError.getCause() != null) {
                jSONObject.put("exception", inneractiveVideoError.getCause().getClass().getName());
                jSONObject.put("message", inneractiveVideoError.getCause().getMessage() == null ? "empty" : inneractiveVideoError.getCause().getMessage());
            }
        } catch (Exception unused) {
            IAlog.a("onReportError: Failed creating Json object from media file!", new Object[0]);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.c
    public com.fyber.inneractive.sdk.model.vast.c c() {
        com.fyber.inneractive.sdk.model.vast.b bVar = this.v;
        if (bVar != null) {
            return bVar.h;
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void g() {
    }
}
