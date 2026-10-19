package com.mbridge.msdk.dycreator.binding;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.MBApkInfoView;
import com.mbridge.msdk.dycreator.baseview.MBFeedBack;
import com.mbridge.msdk.dycreator.baseview.MBLogoTextView;
import com.mbridge.msdk.dycreator.baseview.MBSplashClickView;
import com.mbridge.msdk.dycreator.baseview.MBSplashImageBgView;
import com.mbridge.msdk.dycreator.baseview.MBSplashPortView;
import com.mbridge.msdk.dycreator.baseview.MBSplashShakeView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.d.a;
import com.mbridge.msdk.dycreator.g.d;
import com.mbridge.msdk.dycreator.g.e;
import com.mbridge.msdk.dycreator.g.f;
import com.mbridge.msdk.dycreator.g.g;
import com.mbridge.msdk.dycreator.g.h;
import com.mbridge.msdk.dycreator.g.i;
import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewmodel.BaseViewModel;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.z;

/* JADX INFO: compiled from: MBDataBinding.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private static volatile b a;
    private d b = (d) com.mbridge.msdk.dycreator.d.a.a().a(a.EnumC0395a.VIEW_OBSERVER);
    private com.mbridge.msdk.dycreator.g.c c = (com.mbridge.msdk.dycreator.g.c) com.mbridge.msdk.dycreator.d.a.a().a(a.EnumC0395a.CLICK_OBSERVER);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f6901d = (f) com.mbridge.msdk.dycreator.d.a.a().a(a.EnumC0395a.EFFECT_OBSERVER);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f6902e = (h) com.mbridge.msdk.dycreator.d.a.a().a(a.EnumC0395a.REPORT_OBSERVER);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BaseViewModel f6903f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.shake.b f6904g;

    private b() {
    }

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new b();
                }
            }
        }
        return a;
    }

    private com.mbridge.msdk.shake.b a(final View view, final MBSplashData mBSplashData) {
        if (mBSplashData != null) {
            try {
                DyOption dyOption = mBSplashData.getDyOption();
                if (dyOption != null && dyOption.isShakeVisible() && this.f6904g == null) {
                    this.f6904g = new com.mbridge.msdk.shake.b(dyOption.getShakeStrenght(), dyOption.getShakeTime() * 1000) { // from class: com.mbridge.msdk.dycreator.binding.b.7
                        @Override // com.mbridge.msdk.shake.b
                        public final void a() {
                            View view2 = view;
                            if (view2 != null) {
                                try {
                                    if (view2.getGlobalVisibleRect(new Rect())) {
                                        SplashResData splashResData = new SplashResData();
                                        mBSplashData.setClickType(4);
                                        splashResData.setBaseViewData(mBSplashData);
                                        splashResData.seteAction(EAction.DOWNLOAD);
                                        EventBus.getDefault().post(splashResData);
                                        com.mbridge.msdk.shake.a.a().b(b.this.f6904g);
                                    }
                                } catch (Exception e2) {
                                    aa.d("MBDataBinding", e2.getMessage());
                                }
                            }
                        }
                    };
                }
            } catch (Exception e2) {
                aa.d("MBDataBinding", e2.getMessage());
            }
        }
        return this.f6904g;
    }

    static /* synthetic */ void a(b bVar, View view, Object obj) {
        if (view == null || obj == null || !(obj instanceof com.mbridge.msdk.dycreator.f.a.a)) {
            return;
        }
        view.setOnClickListener(new a((com.mbridge.msdk.dycreator.f.a.a) obj));
    }

    static /* synthetic */ void a(b bVar, InterBase interBase, Object obj) {
        if (interBase == null || obj == null) {
            return;
        }
        String reportDes = interBase.getReportDes();
        if (TextUtils.isEmpty(reportDes)) {
            return;
        }
        try {
            if (!(obj instanceof com.mbridge.msdk.dycreator.f.a.a) || ((com.mbridge.msdk.dycreator.f.a.a) obj).getBindData() == null) {
                return;
            }
            interBase.setDynamicReport(reportDes, ((com.mbridge.msdk.dycreator.f.a.a) obj).getBindData());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void b(b bVar, InterBase interBase, Object obj) {
        final boolean zIsCanSkip;
        if (interBase == 0 || obj == null) {
            return;
        }
        String effectDes = interBase.getEffectDes();
        if (TextUtils.isEmpty(effectDes)) {
            return;
        }
        try {
            if (interBase instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) interBase;
                com.mbridge.msdk.dycreator.f.a.a aVar = (com.mbridge.msdk.dycreator.f.a.a) obj;
                if (effectDes != null) {
                    if (effectDes.equals("wobble") && (viewGroup instanceof MBSplashShakeView)) {
                        if (aVar.getEffectData().isShakeVisible()) {
                            if (bVar.f6904g != null) {
                                com.mbridge.msdk.shake.a.a().b(bVar.f6904g);
                            }
                            com.mbridge.msdk.shake.a.a().a(bVar.a(viewGroup, (MBSplashData) aVar));
                        } else if (bVar.f6904g != null) {
                            com.mbridge.msdk.shake.a.a().b(bVar.f6904g);
                        }
                    }
                    if (effectDes.equals("visible") && (viewGroup instanceof MBApkInfoView)) {
                        if (!aVar.getEffectData().isApkInfoVisible()) {
                            viewGroup.setVisibility(8);
                        } else if (!(aVar instanceof MBSplashData) || TextUtils.isEmpty(((MBSplashData) aVar).getAppInfo())) {
                            viewGroup.setVisibility(4);
                        } else {
                            viewGroup.setVisibility(0);
                        }
                    }
                    effectDes.equals("anim");
                    return;
                }
                return;
            }
            if (interBase instanceof View) {
                final View view = (View) interBase;
                if (effectDes != null) {
                    com.mbridge.msdk.dycreator.f.a.a aVar2 = (com.mbridge.msdk.dycreator.f.a.a) obj;
                    if (effectDes.equals("countdown") && (view instanceof TextView)) {
                        final String str = (String) ((TextView) view).getText();
                        final String strG = w.g(view.getContext());
                        DyOption effectData = aVar2.getEffectData();
                        int countDownTime = 5;
                        if (effectData != null) {
                            zIsCanSkip = effectData.isCanSkip();
                            countDownTime = effectData.getCountDownTime();
                        } else {
                            zIsCanSkip = false;
                        }
                        ((TextView) view).setText(com.mbridge.msdk.dycreator.e.d.a(zIsCanSkip, countDownTime, str, strG));
                        ((com.mbridge.msdk.dycreator.f.a.a) obj).getEffectData().setDyCountDownListenerWrapper(new DyCountDownListenerWrapper() { // from class: com.mbridge.msdk.dycreator.binding.b.5
                            @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper
                            public final void getCountDownValue(int i) {
                                if (i != 0) {
                                    ((TextView) view).setText(com.mbridge.msdk.dycreator.e.d.a(zIsCanSkip, i, str, strG));
                                } else {
                                    SplashResData splashResData = new SplashResData();
                                    splashResData.seteAction(EAction.CLOSE);
                                    EventBus.getDefault().post(splashResData);
                                }
                            }
                        });
                    }
                    effectDes.equals("anim");
                    if (effectDes.equals("visible")) {
                        if (view instanceof MBFeedBack) {
                            if (com.mbridge.msdk.foundation.c.b.a().b()) {
                                view.setVisibility(0);
                            } else {
                                view.setVisibility(8);
                            }
                        }
                        if (!(view instanceof MBLogoTextView) || aVar2.getEffectData() == null || aVar2.getEffectData().isLogoVisible()) {
                            return;
                        }
                        ((MBLogoTextView) view).setCompoundDrawables(null, null, null, null);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void c(b bVar, InterBase interBase, Object obj) {
        if (interBase == 0 || obj == null) {
            return;
        }
        String bindDataDes = interBase.getBindDataDes();
        if (TextUtils.isEmpty(bindDataDes)) {
            return;
        }
        try {
            Object objA = com.mbridge.msdk.dycreator.e.d.a(obj, bindDataDes);
            if (objA == null) {
                return;
            }
            if (interBase instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) interBase;
                com.mbridge.msdk.dycreator.f.a.a aVar = (com.mbridge.msdk.dycreator.f.a.a) obj;
                if (viewGroup instanceof MBSplashClickView) {
                    if (aVar.getEffectData() == null || !aVar.getEffectData().isClickButtonVisible() || aVar.getEffectData().isShakeVisible()) {
                        viewGroup.setVisibility(8);
                    } else if (!TextUtils.isEmpty(objA.toString())) {
                        viewGroup.setVisibility(0);
                        ((MBSplashClickView) viewGroup).initView(objA.toString());
                    }
                }
                if (viewGroup instanceof MBSplashShakeView) {
                    if (aVar.getEffectData() == null || !aVar.getEffectData().isShakeVisible()) {
                        viewGroup.setVisibility(8);
                        return;
                    } else {
                        if (TextUtils.isEmpty(objA.toString())) {
                            return;
                        }
                        viewGroup.setVisibility(0);
                        ((MBSplashShakeView) viewGroup).initView(objA.toString());
                        return;
                    }
                }
                return;
            }
            if (interBase instanceof View) {
                final View view = (View) interBase;
                final com.mbridge.msdk.dycreator.f.a.a aVar2 = (com.mbridge.msdk.dycreator.f.a.a) obj;
                try {
                    if (view instanceof TextView) {
                        try {
                            ((TextView) view).setText(String.valueOf(objA).replace("\\n", "\n"));
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    if (view instanceof ImageView) {
                        if (objA instanceof Integer) {
                            ((ImageView) view).setImageResource(((Integer) objA).intValue());
                        }
                        if (objA instanceof String) {
                            com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(objA.toString(), new com.mbridge.msdk.foundation.same.c.c() { // from class: com.mbridge.msdk.dycreator.binding.b.6
                                @Override // com.mbridge.msdk.foundation.same.c.c
                                public final void onFailedLoad(String str, String str2) {
                                    View view2 = view;
                                    if (view2 != null) {
                                        ((ImageView) view2).setBackgroundColor(-7829368);
                                    }
                                }

                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // com.mbridge.msdk.foundation.same.c.c
                                public final void onSuccessLoad(Bitmap bitmap, String str) {
                                    if (bitmap != null) {
                                        try {
                                            if (!bitmap.isRecycled()) {
                                                boolean z = bitmap.getWidth() > bitmap.getHeight();
                                                if ((aVar2.getEffectData().getOrientation() == 1 ? view.getResources().getConfiguration().orientation : aVar2.getEffectData().getOrientation()) == 1) {
                                                    if (z) {
                                                        View view2 = view;
                                                        if (view2 instanceof MBSplashPortView) {
                                                            if (view2.getParent() != null) {
                                                                ((ViewGroup) view.getParent()).setVisibility(8);
                                                                return;
                                                            }
                                                            return;
                                                        } else if (view2 instanceof MBSplashImageBgView) {
                                                            view2.setVisibility(0);
                                                            Bitmap bitmapA = z.a(bitmap);
                                                            ((MBSplashImageBgView) view).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                                            ((MBSplashImageBgView) view).setImageBitmap(bitmapA);
                                                            return;
                                                        }
                                                    } else {
                                                        View view3 = view;
                                                        if (view3 instanceof MBSplashPortView) {
                                                            view3.setVisibility(0);
                                                            ((MBSplashPortView) view).setScaleType(ImageView.ScaleType.FIT_CENTER);
                                                            ((MBSplashPortView) view).setImageBitmap(bitmap);
                                                            return;
                                                        } else if (view3 instanceof MBSplashImageBgView) {
                                                            view3.setVisibility(8);
                                                            return;
                                                        } else if (view3 instanceof InterBase) {
                                                            String effectDes = ((InterBase) view3).getEffectDes();
                                                            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
                                                            if (viewGroup2 != null) {
                                                                com.mbridge.msdk.dycreator.e.d.a(effectDes, viewGroup2, true);
                                                            }
                                                        }
                                                    }
                                                } else if (z) {
                                                    View view4 = view;
                                                    if (view4 instanceof MBSplashPortView) {
                                                        view4.setVisibility(0);
                                                        ((MBSplashPortView) view).setScaleType(ImageView.ScaleType.FIT_XY);
                                                        ((ImageView) view).setImageBitmap(bitmap);
                                                        return;
                                                    } else if (view4 instanceof MBSplashImageBgView) {
                                                        view4.setVisibility(8);
                                                        ((MBSplashImageBgView) view).setImageBitmap(z.a(bitmap));
                                                        return;
                                                    } else if (view4 instanceof InterBase) {
                                                        String effectDes2 = ((InterBase) view4).getEffectDes();
                                                        ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                                                        if (viewGroup3 != null) {
                                                            com.mbridge.msdk.dycreator.e.d.a(effectDes2, viewGroup3, true);
                                                        }
                                                    }
                                                } else {
                                                    View view5 = view;
                                                    if (view5 instanceof MBSplashPortView) {
                                                        view5.setVisibility(0);
                                                        ((MBSplashPortView) view).setImageBitmap(bitmap);
                                                        return;
                                                    } else {
                                                        if (view5 instanceof MBSplashImageBgView) {
                                                            view5.setVisibility(0);
                                                            Bitmap bitmapA2 = z.a(bitmap);
                                                            ((MBSplashImageBgView) view).setScaleType(ImageView.ScaleType.CENTER_CROP);
                                                            ((MBSplashImageBgView) view).setImageBitmap(bitmapA2);
                                                            return;
                                                        }
                                                        if (view5 instanceof InterBase) {
                                                            String effectDes3 = ((InterBase) view5).getEffectDes();
                                                            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                                                            if (viewGroup4 != null) {
                                                                com.mbridge.msdk.dycreator.e.d.a(effectDes3, viewGroup4, true);
                                                            }
                                                        }
                                                    }
                                                }
                                                ((ImageView) view).setImageBitmap(bitmap);
                                                return;
                                            }
                                        } catch (Exception e3) {
                                            aa.d("MBDataBinding", e3.getMessage());
                                            return;
                                        }
                                    }
                                    ((ImageView) view).setBackgroundColor(-7829368);
                                }
                            });
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void a(final View view) {
        g gVar = new g() { // from class: com.mbridge.msdk.dycreator.binding.b.1
            @Override // com.mbridge.msdk.dycreator.g.g
            public final void a(Object obj) {
                try {
                    KeyEvent.Callback callback = view;
                    if (callback instanceof InterBase) {
                        b.a(b.this, (InterBase) callback, obj);
                    }
                } catch (Exception e2) {
                    aa.d("MBDataBinding", e2.getMessage());
                }
            }
        };
        int id = view.getId();
        h hVar = this.f6902e;
        if (hVar != null) {
            hVar.a(gVar, id);
        }
    }

    public final void a(BaseViewModel baseViewModel) {
        this.f6903f = baseViewModel;
        if (baseViewModel != null) {
            baseViewModel.setClickSubject(this.c);
            this.f6903f.setConcreteSubject(this.b);
            this.f6903f.setEffectSubject(this.f6901d);
            this.f6903f.setReportSubject(this.f6902e);
        }
    }

    public final synchronized void b() {
        com.mbridge.msdk.dycreator.g.c cVar = this.c;
        if (cVar != null) {
            cVar.a();
        }
        d dVar = this.b;
        if (dVar != null) {
            dVar.a();
        }
        f fVar = this.f6901d;
        if (fVar != null) {
            fVar.a();
        }
        if (this.f6903f != null) {
            this.f6903f = null;
        }
        if (this.f6904g != null) {
            this.f6904g = null;
        }
        if (a != null) {
            a = null;
        }
    }

    public final void b(final View view) {
        e eVar = new e() { // from class: com.mbridge.msdk.dycreator.binding.b.2
            @Override // com.mbridge.msdk.dycreator.g.e
            public final void a(Object obj) {
                try {
                    KeyEvent.Callback callback = view;
                    if (callback instanceof InterBase) {
                        b.b(b.this, (InterBase) callback, obj);
                    }
                } catch (Exception e2) {
                    aa.d("MBDataBinding", e2.getMessage());
                }
            }
        };
        int id = view.getId();
        f fVar = this.f6901d;
        if (fVar != null) {
            fVar.a(eVar, id);
        }
    }

    public final void c(final View view) {
        i iVar = new i() { // from class: com.mbridge.msdk.dycreator.binding.b.3
            @Override // com.mbridge.msdk.dycreator.g.i
            public final void a(Object obj) {
                try {
                    KeyEvent.Callback callback = view;
                    if (callback instanceof InterBase) {
                        b.c(b.this, (InterBase) callback, obj);
                    }
                } catch (Exception e2) {
                    aa.d("MBDataBinding", e2.getMessage());
                }
            }
        };
        int id = view.getId();
        d dVar = this.b;
        if (dVar != null) {
            dVar.a(iVar, id);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void d(final View view) {
        if (view != 0) {
            try {
                if (view instanceof InterBase) {
                    String actionDes = ((InterBase) view).getActionDes();
                    if (!TextUtils.isEmpty(actionDes)) {
                        if (actionDes.startsWith(CampaignEx.JSON_NATIVE_VIDEO_CLICK)) {
                            com.mbridge.msdk.dycreator.g.b bVar = new com.mbridge.msdk.dycreator.g.b() { // from class: com.mbridge.msdk.dycreator.binding.b.4
                                @Override // com.mbridge.msdk.dycreator.g.b
                                public final void a(Object obj) {
                                    if (obj == null) {
                                        return;
                                    }
                                    try {
                                        if (com.mbridge.msdk.dycreator.e.d.a(view, (com.mbridge.msdk.dycreator.f.a.a) obj)) {
                                            b.a(b.this, view, obj);
                                        }
                                    } catch (Exception e2) {
                                        aa.d("MBDataBinding", e2.getMessage());
                                    }
                                }
                            };
                            int id = view.getId();
                            com.mbridge.msdk.dycreator.g.c cVar = this.c;
                            if (cVar != null) {
                                cVar.a(bVar, id);
                            }
                        } else if (!actionDes.equals("move") && !actionDes.equals("long_click")) {
                            actionDes.equals("wobble");
                        }
                    }
                }
            } catch (Exception e2) {
                aa.d("MBDataBinding", e2.getMessage());
            }
        }
    }
}
