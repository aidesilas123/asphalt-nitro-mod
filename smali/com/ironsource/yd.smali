###### Class com.json.yd (com.ironsource.yd)
.class Lcom/ironsource/yd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/ironsource/vd;


# direct methods
.method constructor <init>(Lcom/ironsource/vd;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    iput-object p2, p0, Lcom/ironsource/yd;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a()Landroid/os/Message;
    .registers 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0
.end method

.method b(Lcom/ironsource/vd;Ljava/lang/String;J)Lcom/ironsource/wd;
    .registers 6

    new-instance v0, Lcom/ironsource/wd;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/wd;-><init>(Lcom/ironsource/vd;Ljava/lang/String;J)V

    return-object v0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .registers 10

    new-instance v1, Lcom/ironsource/q6;

    iget-object v0, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v0}, Lcom/ironsource/vd;->b()Lcom/ironsource/q6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v2}, Lcom/ironsource/vd;->b()Lcom/ironsource/q6;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/yd;->a()Landroid/os/Message;

    move-result-object v6

    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/yd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_33

    const/16 v0, 0x3fc

    :goto_2b
    iput v0, v6, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/ironsource/yd;->a:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_33
    new-instance v8, Lcom/ironsource/vd;

    iget-object v0, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v0}, Lcom/ironsource/vd;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v0}, Lcom/ironsource/vd;->a()I

    move-result v3

    iget-object v0, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v0}, Lcom/ironsource/vd;->c()I

    move-result v4

    iget-object v0, p0, Lcom/ironsource/yd;->b:Lcom/ironsource/vd;

    invoke-virtual {v0}, Lcom/ironsource/vd;->d()Ljava/lang/String;

    move-result-object v5

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/vd;-><init>(Lcom/ironsource/q6;Ljava/lang/String;IILjava/lang/String;)V

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v8, v7, v0, v1}, Lcom/ironsource/yd;->b(Lcom/ironsource/vd;Ljava/lang/String;J)Lcom/ironsource/wd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/wd;->a()Lcom/ironsource/q3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/q3;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_66

    const/16 v0, 0x3f8

    goto :goto_2b

    :cond_66
    invoke-virtual {v0}, Lcom/ironsource/q3;->b()I

    move-result v0

    goto :goto_2b
.end method
