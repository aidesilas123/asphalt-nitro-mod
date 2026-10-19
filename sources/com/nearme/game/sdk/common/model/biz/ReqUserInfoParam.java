package com.nearme.game.sdk.common.model.biz;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ReqUserInfoParam implements Parcelable, Serializable {
    public static final Parcelable.Creator<ReqUserInfoParam> CREATOR = new a();
    private static final long serialVersionUID = -7044407677910014760L;
    private String a;
    private String b;

    static class a implements Parcelable.Creator<ReqUserInfoParam> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReqUserInfoParam createFromParcel(Parcel parcel) {
            return new ReqUserInfoParam(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final ReqUserInfoParam[] newArray(int i) {
            return new ReqUserInfoParam[i];
        }
    }

    public ReqUserInfoParam(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }
}
