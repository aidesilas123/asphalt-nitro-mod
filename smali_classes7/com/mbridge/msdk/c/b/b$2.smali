###### Class com.mbridge.msdk.c.b.b.AnonymousClass2 (com.mbridge.msdk.c.b.b$2)
.class final Lcom/mbridge/msdk/c/b/b$2;
.super Ljava/lang/Object;
.source "WebEnvCheckController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/c/b/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/c/b/b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/c/b/b$2;->b:Lcom/mbridge/msdk/c/b/b;

    iput-object p2, p0, Lcom/mbridge/msdk/c/b/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/b/c;->i:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "web_check_env_js_file.txt"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/c/b/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/y;->a([BLjava/io/File;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_2c

    :catch_20
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/c/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method
