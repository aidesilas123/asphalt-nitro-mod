###### Class com.apm.insight.runtime.i (com.apm.insight.runtime.i)
.class public Lcom/apm/insight/runtime/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/apm/insight/runtime/d;
    .registers 3

    new-instance v0, Lcom/apm/insight/runtime/d;

    new-instance v1, Lcom/apm/insight/runtime/i$1;

    invoke-direct {v1}, Lcom/apm/insight/runtime/i$1;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/apm/insight/runtime/d;-><init>(Landroid/content/Context;Lcom/apm/insight/ICommonParams;)V

    return-object v0
.end method

###### Class com.apm.insight.runtime.i.AnonymousClass1 (com.apm.insight.runtime.i$1)
.class final Lcom/apm/insight/runtime/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apm/insight/ICommonParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/runtime/i;->a(Landroid/content/Context;)Lcom/apm/insight/runtime/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPatchInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method
