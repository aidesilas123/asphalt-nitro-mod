package com.facebook.messenger;

import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessengerThreadParams.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MessengerThreadParams {
    private final String metadata;
    private final Origin origin;
    private final List<String> participants;
    private final String threadToken;

    /* JADX INFO: compiled from: MessengerThreadParams.kt */
    public enum Origin {
        REPLY_FLOW,
        COMPOSE_FLOW,
        UNKNOWN;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static Origin[] valuesCustom() {
            Origin[] originArrValuesCustom = values();
            return (Origin[]) Arrays.copyOf(originArrValuesCustom, originArrValuesCustom.length);
        }
    }

    public MessengerThreadParams(Origin origin, String threadToken, String metadata, List<String> participants) {
        Intrinsics.checkNotNullParameter(origin, "origin");
        Intrinsics.checkNotNullParameter(threadToken, "threadToken");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(participants, "participants");
        this.origin = origin;
        this.threadToken = threadToken;
        this.metadata = metadata;
        this.participants = participants;
    }

    public final String getMetadata() {
        return this.metadata;
    }

    public final Origin getOrigin() {
        return this.origin;
    }

    public final List<String> getParticipants() {
        return this.participants;
    }

    public final String getThreadToken() {
        return this.threadToken;
    }
}
