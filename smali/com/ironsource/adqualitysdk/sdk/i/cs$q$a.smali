###### Class com.ironsource.adqualitysdk.sdk.i.cs.q.a (com.ironsource.adqualitysdk.sdk.i.cs$q$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/cs$q;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/gz;

.field private synthetic e:Landroid/media/MediaPlayer;

.field private synthetic f:I

.field private synthetic g:I

.field private synthetic h:Lcom/ironsource/adqualitysdk/sdk/i/cs$q;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/cs$q;Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/cs$q;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/gz;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->e:Landroid/media/MediaPlayer;

    iput p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->f:I

    iput p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->g:I

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->h:Lcom/ironsource/adqualitysdk/sdk/i/cs$q;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q;->a:Lcom/ironsource/adqualitysdk/sdk/i/gz$e;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/gz;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->e:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->f:I

    iget v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/cs$q$a;->g:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/adqualitysdk/sdk/i/gz$e;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/gz;Landroid/media/MediaPlayer;II)Z

    return-void
.end method
