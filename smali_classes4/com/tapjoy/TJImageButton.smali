###### Class com.tapjoy.TJImageButton (com.tapjoy.TJImageButton)
.class public Lcom/tapjoy/TJImageButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Landroid/graphics/Bitmap;


# virtual methods
.method public setDisableImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJImageButton;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/tapjoy/TJImageButton;->a:Landroid/graphics/Bitmap;

    goto :goto_a

    :cond_8
    iget-object p1, p0, Lcom/tapjoy/TJImageButton;->b:Landroid/graphics/Bitmap;

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setEnabledImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJImageButton;->a:Landroid/graphics/Bitmap;

    return-void
.end method
