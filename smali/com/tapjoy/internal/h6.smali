###### Class com.tapjoy.internal.h6 (com.tapjoy.internal.h6)
.class public final Lcom/tapjoy/internal/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/o7;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/o7;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/h6;->a:Lcom/tapjoy/internal/o7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/h6;->a:Lcom/tapjoy/internal/o7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/o7;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iput-object v1, v0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/internal/o7;->f:Z

    return-void
.end method
