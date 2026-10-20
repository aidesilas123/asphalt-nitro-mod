###### Class io.didomi.drawable.purpose.mobile.PurposeSaveView (io.didomi.sdk.purpose.mobile.PurposeSaveView)
.class public final Lio/didomi/sdk/purpose/mobile/PurposeSaveView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\r\u0010\u0011\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\u000cR.\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010)\u001a\u0004\u0018\u00010&8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0016\u0010-\u001a\u0004\u0018\u00010*8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lio/didomi/sdk/purpose/mobile/PurposeSaveView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "onFinishInflate",
        "()V",
        "onDetachedFromWindow",
        "",
        "label",
        "description",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;",
        "b",
        "value",
        "Ljava/lang/String;",
        "getDescriptionText",
        "()Ljava/lang/String;",
        "setDescriptionText",
        "(Ljava/lang/String;)V",
        "descriptionText",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/z8;",
        "getThemeProvider",
        "()Lio/didomi/sdk/z8;",
        "setThemeProvider",
        "(Lio/didomi/sdk/z8;)V",
        "themeProvider",
        "Lio/didomi/sdk/z2;",
        "c",
        "Lio/didomi/sdk/z2;",
        "binding",
        "Landroid/widget/ImageView;",
        "getLogoImage$android_release",
        "()Landroid/widget/ImageView;",
        "logoImage",
        "Landroid/widget/Button;",
        "getSaveButton$android_release",
        "()Landroid/widget/Button;",
        "saveButton",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field public b:Lio/didomi/sdk/z8;

.field private c:Lio/didomi/sdk/z2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_1b

    sget-object p1, Lio/didomi/sdk/Didomi;->Companion:Lio/didomi/sdk/Didomi$Companion;

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi$Companion;->getInstance()Lio/didomi/sdk/Didomi;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/Didomi;->getComponent$android_release()Lio/didomi/sdk/J0;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/didomi/sdk/J0;->a(Lio/didomi/sdk/purpose/mobile/PurposeSaveView;)V

    :cond_1b
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lkotlin/v;
    .registers 15

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getSaveButton$android_release()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return-object p1
.end method

.method public final a()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getSaveButton$android_release()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lio/didomi/sdk/k9;->a(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lio/didomi/sdk/z2;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public final b()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getSaveButton$android_release()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lio/didomi/sdk/k9;->b(Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lio/didomi/sdk/z2;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogoImage$android_release()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lio/didomi/sdk/z2;->c:Landroid/widget/ImageView;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final getSaveButton$android_release()Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lio/didomi/sdk/z2;->b:Landroid/widget/Button;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final getThemeProvider()Lio/didomi/sdk/z8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->b:Lio/didomi/sdk/z8;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "themeProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/didomi/sdk/z2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/didomi/sdk/z2;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lio/didomi/sdk/z2;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getThemeProvider()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/e4;->d()Lio/didomi/sdk/w8;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    :cond_30
    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getLogoImage$android_release()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->getThemeProvider()Lio/didomi/sdk/z8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->g()I

    move-result v1

    invoke-static {v0, v1}, Lio/didomi/sdk/l3;->a(Landroid/widget/ImageView;I)V

    :cond_41
    return-void
.end method

.method public final setDescriptionText(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->a:Ljava/lang/String;

    iget-object v0, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->c:Lio/didomi/sdk/z2;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lio/didomi/sdk/z2;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_16
    return-void
.end method

.method public final setThemeProvider(Lio/didomi/sdk/z8;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/purpose/mobile/PurposeSaveView;->b:Lio/didomi/sdk/z8;

    return-void
.end method
