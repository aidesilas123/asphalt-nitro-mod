###### Class com.fyber.inneractive.sdk.util.IAlog.a (com.fyber.inneractive.sdk.util.IAlog$a)
.class public Lcom/fyber/inneractive/sdk/util/IAlog$a;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/util/IAlog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList<",
        "Lcom/fyber/inneractive/sdk/logger/FMPLogger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/IAlog;->a()Lcom/fyber/inneractive/sdk/logger/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
