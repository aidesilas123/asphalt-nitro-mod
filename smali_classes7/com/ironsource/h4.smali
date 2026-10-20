###### Class com.json.h4 (com.ironsource.h4)
.class public Lcom/ironsource/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/ironsource/h5;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/h5;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/h5;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/a4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/h4;->a:Lcom/ironsource/h5;

    iput-object p2, p0, Lcom/ironsource/h4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/h4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/h4;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ironsource/h4;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/h4;->b:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/ironsource/w5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;

    move-result-object v1

    if-eqz v1, :cond_29

    iget v1, v1, Lcom/ironsource/wa;->a:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_28

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_26

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_29

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :catch_28
    nop

    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/ironsource/h4;->a:Lcom/ironsource/h5;

    if-eqz v1, :cond_32

    iget-object v2, p0, Lcom/ironsource/h4;->d:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/h5;->a(Ljava/util/ArrayList;Z)V

    :cond_32
    return-void
.end method
