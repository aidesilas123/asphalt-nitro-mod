###### Class com.json.pb (com.ironsource.pb)
.class public final Lcom/ironsource/pb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/pb$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0003\u001a\u00020\u0002R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/ironsource/pb;",
        "",
        "",
        "a",
        "Lcom/ironsource/r4;",
        "Lcom/ironsource/r4;",
        "calculator",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/r4;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    new-instance v0, Lcom/ironsource/pb$a;

    invoke-direct {v0, p0}, Lcom/ironsource/pb$a;-><init>(Lcom/ironsource/pb;)V

    new-instance v1, Lcom/ironsource/r4;

    invoke-direct {v1, v0}, Lcom/ironsource/r4;-><init>(Lcom/ironsource/ob;)V

    iput-object v1, p0, Lcom/ironsource/pb;->a:Lcom/ironsource/r4;

    return-void
.end method

###### Class com.ironsource.pb.a (com.ironsource.pb$a)
.class final Lcom/ironsource/pb$a;
.super Lcom/ironsource/ob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/pb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/ironsource/pb$a;",
        "Lcom/ironsource/ob;",
        "",
        "run",
        "<init>",
        "(Lcom/ironsource/pb;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/pb;


# direct methods
.method public constructor <init>(Lcom/ironsource/pb;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/pb$a;->b:Lcom/ironsource/pb;

    invoke-direct {p0}, Lcom/ironsource/ob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_5
    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/ironsource/ob;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_13
    new-instance v1, Lcom/ironsource/a4;

    const/16 v2, 0x2c

    invoke-direct {v1, v2, v0}, Lcom/ironsource/a4;-><init>(ILorg/json/JSONObject;)V

    sget-object v0, Lcom/ironsource/ka;->P:Lcom/ironsource/ka;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->a(Lcom/ironsource/a4;)V

    return-void
.end method
