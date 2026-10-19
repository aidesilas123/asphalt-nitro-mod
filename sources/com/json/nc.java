package com.json;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0003J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0004"}, d2 = {"Lcom/ironsource/nc;", "", "", "a", "mediationsdk_release"}, mv = {1, 8, 0})
public interface nc {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, d2 = {"Lcom/ironsource/nc$a;", "Lcom/ironsource/nc;", "", "a", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a implements nc {
        @Override // com.json.nc
        public long a() {
            return System.currentTimeMillis();
        }
    }

    long a();
}
