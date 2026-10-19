package com.mbridge.msdk.dycreator.wrapper;

import com.mbridge.msdk.dycreator.listener.DyCountDownListenerWrapper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DyOption {
    private List<String> a;
    private File b;
    private CampaignEx c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DyAdType f6928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6931g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private DyCountDownListenerWrapper r;

    public static class Builder implements IViewOptionBuilder {
        private List<String> a;
        private File b;
        private CampaignEx c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private DyAdType f6932d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f6933e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f6934f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f6935g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        private int l;
        private int m;
        private int n;
        private int o;
        private int p;

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder adChoiceLink(String str) {
            this.f6934f = str;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public DyOption build() {
            return new DyOption(this);
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder campaignEx(CampaignEx campaignEx) {
            this.c = campaignEx;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder canSkip(boolean z) {
            this.f6933e = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder countDownTime(int i) {
            this.o = i;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder dyAdType(DyAdType dyAdType) {
            this.f6932d = dyAdType;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder file(File file) {
            this.b = file;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder fileDirs(List<String> list) {
            this.a = list;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isApkInfoVisible(boolean z) {
            this.j = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isClickButtonVisible(boolean z) {
            this.h = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isLogoVisible(boolean z) {
            this.k = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isScreenClick(boolean z) {
            this.f6935g = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder isShakeVisible(boolean z) {
            this.i = z;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder orientation(int i) {
            this.n = i;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeStrenght(int i) {
            this.l = i;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder shakeTime(int i) {
            this.m = i;
            return this;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DyOption.IViewOptionBuilder
        public IViewOptionBuilder templateType(int i) {
            this.p = i;
            return this;
        }
    }

    public interface IViewOptionBuilder {
        IViewOptionBuilder adChoiceLink(String str);

        DyOption build();

        IViewOptionBuilder campaignEx(CampaignEx campaignEx);

        IViewOptionBuilder canSkip(boolean z);

        IViewOptionBuilder countDownTime(int i);

        IViewOptionBuilder dyAdType(DyAdType dyAdType);

        IViewOptionBuilder file(File file);

        IViewOptionBuilder fileDirs(List<String> list);

        IViewOptionBuilder isApkInfoVisible(boolean z);

        IViewOptionBuilder isClickButtonVisible(boolean z);

        IViewOptionBuilder isLogoVisible(boolean z);

        IViewOptionBuilder isScreenClick(boolean z);

        IViewOptionBuilder isShakeVisible(boolean z);

        IViewOptionBuilder orientation(int i);

        IViewOptionBuilder shakeStrenght(int i);

        IViewOptionBuilder shakeTime(int i);

        IViewOptionBuilder templateType(int i);
    }

    public DyOption(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.f6928d = builder.f6932d;
        this.f6931g = builder.f6933e;
        this.f6929e = builder.f6934f;
        this.f6930f = builder.f6935g;
        this.h = builder.h;
        this.j = builder.j;
        this.i = builder.i;
        this.k = builder.k;
        this.l = builder.l;
        this.m = builder.m;
        this.n = builder.n;
        this.o = builder.o;
        this.q = builder.p;
    }

    public String getAdChoiceLink() {
        return this.f6929e;
    }

    public CampaignEx getCampaignEx() {
        return this.c;
    }

    public int getCountDownTime() {
        return this.o;
    }

    public int getCurrentCountDown() {
        return this.p;
    }

    public DyAdType getDyAdType() {
        return this.f6928d;
    }

    public File getFile() {
        return this.b;
    }

    public List<String> getFileDirs() {
        return this.a;
    }

    public int getOrientation() {
        return this.n;
    }

    public int getShakeStrenght() {
        return this.l;
    }

    public int getShakeTime() {
        return this.m;
    }

    public int getTemplateType() {
        return this.q;
    }

    public boolean isApkInfoVisible() {
        return this.j;
    }

    public boolean isCanSkip() {
        return this.f6931g;
    }

    public boolean isClickButtonVisible() {
        return this.h;
    }

    public boolean isClickScreen() {
        return this.f6930f;
    }

    public boolean isLogoVisible() {
        return this.k;
    }

    public boolean isShakeVisible() {
        return this.i;
    }

    public void setDyCountDownListener(int i) {
        DyCountDownListenerWrapper dyCountDownListenerWrapper = this.r;
        if (dyCountDownListenerWrapper != null) {
            dyCountDownListenerWrapper.getCountDownValue(i);
        }
        this.p = i;
    }

    public void setDyCountDownListenerWrapper(DyCountDownListenerWrapper dyCountDownListenerWrapper) {
        this.r = dyCountDownListenerWrapper;
    }
}
