package com.facebook.share.model;

import android.os.Parcel;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ShareMessengerActionButton.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ShareMessengerActionButton implements ShareModel {
    private final String title;

    /* JADX INFO: compiled from: ShareMessengerActionButton.kt */
    public static abstract class Builder<M extends ShareMessengerActionButton, B extends Builder<M, B>> implements ShareModelBuilder<M, B> {
        private String title;

        public final String getTitle$facebook_common_release() {
            return this.title;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public B readFrom(M m) {
            return m == null ? this : (B) setTitle(m.getTitle());
        }

        public final B setTitle(String str) {
            this.title = str;
            return this;
        }

        public final void setTitle$facebook_common_release(String str) {
            this.title = str;
        }
    }

    public ShareMessengerActionButton(Parcel parcel) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        this.title = parcel.readString();
    }

    protected ShareMessengerActionButton(Builder<?, ?> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.title = builder.getTitle$facebook_common_release();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.title);
    }
}
