###### Class com.ironsource.adqualitysdk.sdk.i.cs.q (com.ironsource.adqualitysdk.sdk.i.cs$q)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/gz$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs;->ﮐ(Ljava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/gz$e;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q;->a:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)Z
    .registers 12

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/cs$q;Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)V

    invoke-static {v6}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    const/4 p1, 0x0

    return p1
.end method
