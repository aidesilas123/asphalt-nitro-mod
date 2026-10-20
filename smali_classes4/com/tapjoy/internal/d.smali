###### Class com.tapjoy.internal.d (com.tapjoy.internal.d)
.class public final Lcom/tapjoy/internal/d;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public final show()V
    .registers 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
