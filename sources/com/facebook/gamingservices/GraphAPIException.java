package com.facebook.gamingservices;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TournamentFetcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class GraphAPIException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphAPIException(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
