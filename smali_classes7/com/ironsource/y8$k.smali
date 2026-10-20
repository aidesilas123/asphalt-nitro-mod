###### Class com.ironsource.y8.k (com.ironsource.y8$k)
.class Lcom/ironsource/y8$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y8;->onSegmentReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/y8;


# direct methods
.method constructor <init>(Lcom/ironsource/y8;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/y8$k;->b:Lcom/ironsource/y8;

    iput-object p2, p0, Lcom/ironsource/y8$k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/y8$k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ironsource/y8$k;->b:Lcom/ironsource/y8;

    invoke-static {v0}, Lcom/ironsource/y8;->a(Lcom/ironsource/y8;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/y8$k;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
