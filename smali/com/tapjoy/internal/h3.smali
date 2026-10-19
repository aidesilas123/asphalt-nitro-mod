###### Class com.tapjoy.internal.h3 (com.tapjoy.internal.h3)
.class public final Lcom/tapjoy/internal/h3;
.super Ljava/util/Hashtable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "TJC_OPTION_SERVICE_URL"

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    const-string v1, "https://placements.tapjoy.com/"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
