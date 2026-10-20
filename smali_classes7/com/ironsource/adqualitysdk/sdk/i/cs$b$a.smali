###### Class com.ironsource.adqualitysdk.sdk.i.cs.b.a (com.ironsource.adqualitysdk.sdk.i.cs$b$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs$b;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ha;Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ha;

.field private synthetic e:Landroid/media/MediaPlayer;

.field private synthetic f:Lcom/ironsource/adqualitysdk/sdk/i/cs$b;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs$b;Lcom/ironsource/adqualitysdk/sdk/i/ha;Landroid/media/MediaPlayer;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/cs$b;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ha;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->e:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->f:Lcom/ironsource/adqualitysdk/sdk/i/cs$b;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/ha$c;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ha;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$b$a;->e:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ha$c;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ha;Landroid/media/MediaPlayer;)V

    return-void
.end method
