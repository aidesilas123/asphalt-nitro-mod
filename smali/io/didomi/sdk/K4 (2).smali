###### Class io.didomi.drawable.K4 (io.didomi.sdk.K4)
.class public final Lio/didomi/sdk/K4;
.super Lio/didomi/sdk/U4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/K4$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0018\u0000 \u00162\u00020\u0001:\u0001\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/didomi/sdk/K4;",
        "Lio/didomi/sdk/U4;",
        "Lio/didomi/sdk/v1;",
        "binding",
        "Lio/didomi/sdk/m4$a;",
        "callbacks",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "<init>",
        "(Lio/didomi/sdk/v1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V",
        "Lio/didomi/sdk/E4;",
        "data",
        "",
        "itemPosition",
        "",
        "a",
        "(Lio/didomi/sdk/E4;I)V",
        "(Lio/didomi/sdk/E4;)V",
        "c",
        "Lio/didomi/sdk/v1;",
        "d",
        "Lio/didomi/sdk/m4$a;",
        "e",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/didomi/sdk/K4$a;


# instance fields
.field private final c:Lio/didomi/sdk/v1;

.field private final d:Lio/didomi/sdk/m4$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/K4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/K4$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/K4;->e:Lio/didomi/sdk/K4$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/v1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V
    .registers 5

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lio/didomi/sdk/U4;-><init>(Landroidx/viewbinding/ViewBinding;Lio/didomi/sdk/z8;)V

    iput-object p1, p0, Lio/didomi/sdk/K4;->c:Lio/didomi/sdk/v1;

    iput-object p2, p0, Lio/didomi/sdk/K4;->d:Lio/didomi/sdk/m4$a;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/K4;)Lio/didomi/sdk/m4$a;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/K4;->d:Lio/didomi/sdk/m4$a;

    return-object p0
.end method

.method private static final a(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;Landroid/view/View;)V
    .registers 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/didomi/sdk/K4;->d:Lio/didomi/sdk/m4$a;

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->a()Lio/didomi/sdk/w4$a;

    move-result-object p2

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->i()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lio/didomi/sdk/m4$a;->a(Lio/didomi/sdk/w4$a;Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 2

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    return-void
.end method

.method public static synthetic c(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 1

    invoke-static {p0}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/E4;)V
    .registers 15

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->n()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Lio/didomi/sdk/E4;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->m()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lio/didomi/sdk/K4;->c:Lio/didomi/sdk/v1;

    iget-object v0, v0, Lio/didomi/sdk/v1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    invoke-virtual {v0}, Lio/didomi/sdk/view/mobile/DidomiToggle;->getState()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->m()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v2

    const/4 v12, 0x0

    if-eq v1, v2, :cond_44

    invoke-virtual {v0, v12}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setAnimate(Z)V

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->m()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setState(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    new-instance v1, Lio/didomi/sdk/ua;

    invoke-direct {v1, v0}, Lio/didomi/sdk/ua;-><init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_44
    const-string v1, "update$lambda$8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->m()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->e()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lio/didomi/sdk/E4;->e()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {p1, v12}, Lio/didomi/sdk/E4;->a(Z)V

    :cond_78
    new-instance v1, Lio/didomi/sdk/K4$b;

    invoke-direct {v1, p0, p1}, Lio/didomi/sdk/K4$b;-><init>(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/E4;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "data"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Lio/didomi/sdk/U4;->a(Lio/didomi/sdk/w4;)V

    iget-object v2, v0, Lio/didomi/sdk/K4;->c:Lio/didomi/sdk/v1;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->k()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_76

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->k()I

    move-result v6

    invoke-static {v3, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/didomi/sdk/R$dimen;->didomi_purpose_item_icon_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v2, Lio/didomi/sdk/v1;->e:Landroid/widget/TextView;

    new-instance v8, Landroid/text/SpannableString;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v9, "bind$lambda$6$lambda$1$lambda$0"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v9

    invoke-virtual {v9}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v9

    invoke-virtual {v9}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object v9

    invoke-static {v7, v9}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v3, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v9, v10, v3, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    const/16 v3, 0x21

    invoke-virtual {v8, v9, v5, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_93

    :cond_76
    iget-object v3, v2, Lio/didomi/sdk/v1;->e:Landroid/widget/TextView;

    const-string v6, "bind$lambda$6$lambda$2"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/e4;->c()Lio/didomi/sdk/w8;

    move-result-object v6

    invoke-static {v3, v6}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_93
    iget-object v3, v2, Lio/didomi/sdk/v1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v6

    invoke-virtual {v6}, Lio/didomi/sdk/z8;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->n()Z

    move-result v3

    const/16 v6, 0x8

    if-eqz v3, :cond_d2

    iget-object v3, v2, Lio/didomi/sdk/v1;->d:Landroid/widget/TextView;

    const-string v7, "bind$lambda$6$lambda$3"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/U4;->b()Lio/didomi/sdk/z8;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/z8;->i()Lio/didomi/sdk/e4;

    move-result-object v7

    invoke-virtual {v7}, Lio/didomi/sdk/e4;->d()Lio/didomi/sdk/w8;

    move-result-object v7

    invoke-static {v3, v7}, Lio/didomi/sdk/y8;->a(Landroid/widget/TextView;Lio/didomi/sdk/w8;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lio/didomi/sdk/v1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setCallback(Lio/didomi/sdk/view/mobile/DidomiToggle$a;)V

    goto :goto_e6

    :cond_d2
    iget-object v3, v2, Lio/didomi/sdk/v1;->d:Landroid/widget/TextView;

    const-string v7, "textHolderPurposeItemEssentialTitle"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lio/didomi/sdk/v1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    const-string v6, "switchHolderPurposeItem"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_e6
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Lio/didomi/sdk/b;->b:Lio/didomi/sdk/b;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x3c

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lio/didomi/sdk/j9;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Integer;Lio/didomi/sdk/b;ILjava/lang/Object;)V

    iget-object v2, v2, Lio/didomi/sdk/v1;->c:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-virtual/range {p1 .. p1}, Lio/didomi/sdk/E4;->j()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lio/didomi/sdk/view/mobile/DidomiToggle;->setHasMiddleState(Z)V

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lio/didomi/sdk/ta;

    invoke-direct {v3, v0, v1}, Lio/didomi/sdk/ta;-><init>(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p1}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/E4;)V

    return-void
.end method

###### Class io.didomi.drawable.K4.Companion (io.didomi.sdk.K4$a)
.class public final Lio/didomi/sdk/K4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/K4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/K4$a;",
        "",
        "<init>",
        "()V",
        "",
        "ID",
        "I",
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

    invoke-direct {p0}, Lio/didomi/sdk/K4$a;-><init>()V

    return-void
.end method

###### Class io.didomi.sdk.K4.b (io.didomi.sdk.K4$b)
.class public final Lio/didomi/sdk/K4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/view/mobile/DidomiToggle$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/E4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "io/didomi/sdk/K4$b",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$a;",
        "Lio/didomi/sdk/view/mobile/DidomiToggle;",
        "toggle",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "state",
        "",
        "a",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/K4;

.field final synthetic b:Lio/didomi/sdk/E4;


# direct methods
.method constructor <init>(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/K4$b;->a:Lio/didomi/sdk/K4;

    iput-object p2, p0, Lio/didomi/sdk/K4$b;->b:Lio/didomi/sdk/E4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/didomi/sdk/view/mobile/DidomiToggle;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 5

    const-string v0, "toggle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/didomi/sdk/K4$b;->a:Lio/didomi/sdk/K4;

    invoke-static {p1}, Lio/didomi/sdk/K4;->a(Lio/didomi/sdk/K4;)Lio/didomi/sdk/m4$a;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/K4$b;->b:Lio/didomi/sdk/E4;

    invoke-virtual {v0}, Lio/didomi/sdk/E4;->a()Lio/didomi/sdk/w4$a;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/K4$b;->b:Lio/didomi/sdk/E4;

    invoke-virtual {v1}, Lio/didomi/sdk/E4;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, p2}, Lio/didomi/sdk/m4$a;->a(Lio/didomi/sdk/w4$a;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

###### Class io.didomi.drawable.ta (io.didomi.sdk.ta)
.class public final synthetic Lio/didomi/sdk/ta;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/K4;

.field public final synthetic b:Lio/didomi/sdk/E4;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ta;->a:Lio/didomi/sdk/K4;

    iput-object p2, p0, Lio/didomi/sdk/ta;->b:Lio/didomi/sdk/E4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/ta;->a:Lio/didomi/sdk/K4;

    iget-object v1, p0, Lio/didomi/sdk/ta;->b:Lio/didomi/sdk/E4;

    invoke-static {v0, v1, p1}, Lio/didomi/sdk/K4;->c(Lio/didomi/sdk/K4;Lio/didomi/sdk/E4;Landroid/view/View;)V

    return-void
.end method

###### Class io.didomi.drawable.ua (io.didomi.sdk.ua)
.class public final synthetic Lio/didomi/sdk/ua;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/view/mobile/DidomiToggle;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ua;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/ua;->a:Lio/didomi/sdk/view/mobile/DidomiToggle;

    invoke-static {v0}, Lio/didomi/sdk/K4;->d(Lio/didomi/sdk/view/mobile/DidomiToggle;)V

    return-void
.end method
