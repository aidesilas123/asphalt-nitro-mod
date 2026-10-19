###### Class com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls (com.unity3d.ads.core.domain.SendDiagnosticEvent$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 15

    if-nez p7, :cond_20

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_9

    move-object v3, v0

    goto :goto_a

    :cond_9
    move-object v3, p2

    :goto_a
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_10

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p3

    :goto_11
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_17

    move-object v5, v0

    goto :goto_18

    :cond_17
    move-object v5, p4

    :goto_18
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
