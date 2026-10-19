package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataBufferRef;
import com.google.android.gms.common.data.DataHolder;

/* JADX INFO: loaded from: classes2.dex */
public final class zzb extends DataBufferRef implements Milestone {
    zzb(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final boolean equals(Object obj) {
        return MilestoneEntity.zza(this, obj);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* synthetic */ Milestone freeze() {
        return new MilestoneEntity(this);
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public final byte[] getCompletionRewardData() {
        return getByteArray("completion_reward_data");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // com.google.android.gms.games.quest.Milestone
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long getCurrentProgress() {
        /*
            r9 = this;
            int r0 = r9.getState()
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L32
            r1 = 2
            if (r0 == r1) goto L18
            r1 = 3
            if (r0 == r1) goto L13
            r1 = 4
            if (r0 == r1) goto L13
            goto L32
        L13:
            long r0 = r9.getTargetProgress()
            goto L33
        L18:
            java.lang.String r0 = "current_value"
            long r0 = r9.getLong(r0)
            java.lang.String r4 = "quest_state"
            long r4 = r9.getLong(r4)
            r6 = 6
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L33
            java.lang.String r4 = "initial_value"
            long r4 = r9.getLong(r4)
            long r0 = r0 - r4
            goto L33
        L32:
            r0 = r2
        L33:
            java.lang.String r4 = "MilestoneRef"
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 >= 0) goto L3f
            java.lang.String r0 = "Current progress should never be negative"
            com.google.android.gms.games.internal.zzh.e(r4, r0)
            goto L40
        L3f:
            r2 = r0
        L40:
            long r0 = r9.getTargetProgress()
            int r5 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r5 <= 0) goto L51
            java.lang.String r0 = "Current progress should never exceed target progress"
            com.google.android.gms.games.internal.zzh.e(r4, r0)
            long r2 = r9.getTargetProgress()
        L51:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.games.quest.zzb.getCurrentProgress():long");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public final String getEventId() {
        return getString("external_event_id");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public final String getMilestoneId() {
        return getString("external_milestone_id");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public final int getState() {
        return getInteger("milestone_state");
    }

    @Override // com.google.android.gms.games.quest.Milestone
    public final long getTargetProgress() {
        return getLong("target_value");
    }

    @Override // com.google.android.gms.common.data.DataBufferRef
    public final int hashCode() {
        return MilestoneEntity.zza(this);
    }

    public final String toString() {
        return MilestoneEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ((MilestoneEntity) ((Milestone) freeze())).writeToParcel(parcel, i);
    }
}
