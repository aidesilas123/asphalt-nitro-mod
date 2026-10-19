###### Class com.gameloft.didomiwrapper.DidomiWrapper.a (com.gameloft.didomiwrapper.DidomiWrapper$a)
.class Lcom/gameloft/didomiwrapper/DidomiWrapper$a;
.super Ljava/lang/Object;
.source "DidomiWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/didomiwrapper/DidomiWrapper;->Initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapper;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapper;->access$100()V

    new-instance v1, Lio/didomi/sdk/DidomiInitializeParameters;

    iget-object v3, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->b:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->c:Ljava/lang/String;

    iget-object v13, p0, Lcom/gameloft/didomiwrapper/DidomiWrapper$a;->d:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lio/didomi/sdk/DidomiInitializeParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/didomi/sdk/Didomi;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/didomiwrapper/Utils;->GetActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lio/didomi/sdk/Didomi;->initialize(Landroid/app/Application;Lio/didomi/sdk/DidomiInitializeParameters;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    goto :goto_3b

    :catch_34
    invoke-static {}, Lcom/gameloft/didomiwrapper/DidomiWrapper;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3b
    :goto_3b
    return-void
.end method
