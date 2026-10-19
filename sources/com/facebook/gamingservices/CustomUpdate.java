package com.facebook.gamingservices;

import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.gamingservices.model.CustomUpdateContent;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomUpdate.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class CustomUpdate {
    public static final CustomUpdate INSTANCE = new CustomUpdate();

    private CustomUpdate() {
    }

    public static final GraphRequest newCustomUpdateRequest(CustomUpdateContent content, GraphRequest.Callback callback) {
        Intrinsics.checkNotNullParameter(content, "content");
        return GraphRequest.Companion.newPostRequest(AccessToken.Companion.getCurrentAccessToken(), "me/custom_update", content.toGraphRequestContent(), callback);
    }
}
