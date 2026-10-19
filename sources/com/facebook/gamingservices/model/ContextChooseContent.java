package com.facebook.gamingservices.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ContextChooseContent.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ContextChooseContent implements ShareModel {
    public static final CREATOR CREATOR = new CREATOR(null);
    private final List<String> filters;
    private final Integer maxSize;
    private final Integer minSize;

    /* JADX INFO: compiled from: ContextChooseContent.kt */
    public static final class Builder implements ShareModelBuilder<ContextChooseContent, Builder> {
        private List<String> filters;
        private Integer maxSize;
        private Integer minSize;

        @Override // com.facebook.share.ShareBuilder
        public ContextChooseContent build() {
            return new ContextChooseContent(this, null);
        }

        public final List<String> getFilters$facebook_gamingservices_release() {
            return this.filters;
        }

        public final Integer getMaxSize$facebook_gamingservices_release() {
            return this.maxSize;
        }

        public final Integer getMinSize$facebook_gamingservices_release() {
            return this.minSize;
        }

        public final Builder readFrom(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return readFrom((ContextChooseContent) parcel.readParcelable(ContextChooseContent.class.getClassLoader()));
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ContextChooseContent contextChooseContent) {
            Builder minSize;
            return (contextChooseContent == null || (minSize = setFilters(contextChooseContent.getFilters()).setMaxSize(contextChooseContent.getMaxSize()).setMinSize(contextChooseContent.getMinSize())) == null) ? this : minSize;
        }

        public final Builder setFilters(List<String> list) {
            this.filters = list;
            return this;
        }

        public final void setFilters$facebook_gamingservices_release(List<String> list) {
            this.filters = list;
        }

        public final Builder setMaxSize(Integer num) {
            this.maxSize = num;
            return this;
        }

        public final void setMaxSize$facebook_gamingservices_release(Integer num) {
            this.maxSize = num;
        }

        public final Builder setMinSize(Integer num) {
            this.minSize = num;
            return this;
        }

        public final void setMinSize$facebook_gamingservices_release(Integer num) {
            this.minSize = num;
        }
    }

    /* JADX INFO: compiled from: ContextChooseContent.kt */
    public static final class CREATOR implements Parcelable.Creator<ContextChooseContent> {
        private CREATOR() {
        }

        public /* synthetic */ CREATOR(n nVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextChooseContent createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new ContextChooseContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ContextChooseContent[] newArray(int i) {
            return new ContextChooseContent[i];
        }
    }

    public ContextChooseContent(Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.filters = parcel.createStringArrayList();
        this.maxSize = Integer.valueOf(parcel.readInt());
        this.minSize = Integer.valueOf(parcel.readInt());
    }

    private ContextChooseContent(Builder builder) {
        this.filters = builder.getFilters$facebook_gamingservices_release();
        this.maxSize = builder.getMaxSize$facebook_gamingservices_release();
        this.minSize = builder.getMinSize$facebook_gamingservices_release();
    }

    public /* synthetic */ ContextChooseContent(Builder builder, n nVar) {
        this(builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final List<String> getFilters() {
        List<String> list = this.filters;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public final Integer getMaxSize() {
        return this.maxSize;
    }

    public final Integer getMinSize() {
        return this.minSize;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeStringList(this.filters);
        Integer num = this.maxSize;
        out.writeInt(num == null ? 0 : num.intValue());
        Integer num2 = this.minSize;
        out.writeInt(num2 != null ? num2.intValue() : 0);
    }
}
