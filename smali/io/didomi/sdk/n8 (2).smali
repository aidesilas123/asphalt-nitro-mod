###### Class io.didomi.drawable.C1845n8 (io.didomi.sdk.n8)
.class public final Lio/didomi/sdk/n8;
.super Lio/didomi/sdk/n7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/n8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \t2\u00020\u0001:\u0001\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003R\"\u0010\u0012\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/didomi/sdk/n8;",
        "Lio/didomi/sdk/n7;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "onAttach",
        "(Landroid/content/Context;)V",
        "d",
        "c",
        "b",
        "Lio/didomi/sdk/t8;",
        "Lio/didomi/sdk/t8;",
        "e",
        "()Lio/didomi/sdk/t8;",
        "setModel",
        "(Lio/didomi/sdk/t8;)V",
        "model",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/n8$a;


# instance fields
.field public c:Lio/didomi/sdk/t8;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/n8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/n8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/n8;->d:Lio/didomi/sdk/n8$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lio/didomi/sdk/n7;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/n7;->a()Lio/didomi/sdk/f1;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lio/didomi/sdk/f1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/didomi/sdk/R$dimen;->didomi_tv_preferences_qr_code_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lio/didomi/sdk/n8;->e()Lio/didomi/sdk/t8;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/didomi/sdk/t8;->c(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1f
    return-void
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/n7;->a()Lio/didomi/sdk/f1;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lio/didomi/sdk/f1;->d:Landroid/widget/TextView;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {p0}, Lio/didomi/sdk/n8;->e()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/t8;->O0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    return-void
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/n7;->a()Lio/didomi/sdk/f1;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Lio/didomi/sdk/f1;->e:Landroid/widget/TextView;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    invoke-virtual {p0}, Lio/didomi/sdk/n8;->e()Lio/didomi/sdk/t8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/t8;->P0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_18
    return-void
.end method

.method public final e()Lio/didomi/sdk/t8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/n8;->c:Lio/didomi/sdk/t8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "model"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/n8;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

###### Class io.didomi.drawable.C1845n8.Companion (io.didomi.sdk.n8$a)
.class public final Lio/didomi/sdk/n8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/n8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/n8$a;",
        "",
        "<init>",
        "()V",
        "",
        "TAG",
        "Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/n8$a;-><init>()V

    return-void
.end method
