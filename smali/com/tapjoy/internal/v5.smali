###### Class com.tapjoy.internal.v5 (com.tapjoy.internal.v5)
.class public final Lcom/tapjoy/internal/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/o7;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/o7;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/v5;->a:Lcom/tapjoy/internal/o7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/v5;->a:Lcom/tapjoy/internal/o7;

    iget-object v0, v0, Lcom/tapjoy/internal/o7;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/internal/v5;->a:Lcom/tapjoy/internal/o7;

    iget-object v1, v0, Lcom/tapjoy/internal/o7;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_13
    return-void
.end method
