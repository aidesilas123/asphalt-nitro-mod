###### Class io.didomi.sdk.view.ctv.DidomiTVSwitch.c (io.didomi.sdk.view.ctv.DidomiTVSwitch$c)
.class final enum Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/view/ctv/DidomiTVSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000b\u0010\nj\u0002\u0008\tj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;",
        "",
        "",
        "colorRes",
        "backgroundColorRes",
        "<init>",
        "(Ljava/lang/String;III)V",
        "a",
        "I",
        "c",
        "()I",
        "b",
        "d",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final enum c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

.field public static final enum d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

.field private static final synthetic e:[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    sget v1, Lio/didomi/sdk/R$color;->didomi_tv_neutrals:I

    sget v2, Lio/didomi/sdk/R$color;->didomi_tv_background_c:I

    const-string v3, "DISABLED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    new-instance v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    sget v2, Lio/didomi/sdk/R$color;->didomi_tv_primary_brand:I

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    invoke-static {}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->a()[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->e:[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->a:I

    iput p4, p0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->b:I

    return-void
.end method

.method private static final synthetic a()[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    sget-object v1, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;
    .registers 2

    const-class v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;
    .registers 1

    sget-object v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->e:[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->b:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->a:I

    return v0
.end method
