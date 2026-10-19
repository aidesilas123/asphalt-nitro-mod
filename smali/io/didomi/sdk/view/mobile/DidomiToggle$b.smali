###### Class io.didomi.sdk.view.mobile.DidomiToggle.b (io.didomi.sdk.view.mobile.DidomiToggle$b)
.class public final enum Lio/didomi/sdk/view/mobile/DidomiToggle$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/view/mobile/DidomiToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/view/mobile/DidomiToggle$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001d\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u000b\u001a\u0004\u0008\u000e\u0010\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "",
        "",
        "colorRes",
        "iconRes",
        "<init>",
        "(Ljava/lang/String;III)V",
        "",
        "hasMiddleState",
        "a",
        "(Z)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "I",
        "b",
        "()I",
        "c",
        "d",
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
.field public static final enum c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

.field public static final enum d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

.field public static final enum e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

.field private static final synthetic f:[Lio/didomi/sdk/view/mobile/DidomiToggle$b;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    sget v1, Lio/didomi/sdk/R$color;->didomi_toggle_disabled:I

    sget v2, Lio/didomi/sdk/R$drawable;->didomi_ic_toggle_cross:I

    const-string v3, "DISABLED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    new-instance v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    sget v1, Lio/didomi/sdk/R$color;->didomi_toggle_enabled:I

    sget v2, Lio/didomi/sdk/R$drawable;->didomi_ic_toggle_check:I

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    new-instance v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    sget v8, Lio/didomi/sdk/R$color;->didomi_toggle_unknown:I

    const-string v6, "UNKNOWN"

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;-><init>(Ljava/lang/String;IIIILkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-static {}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->a()[Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->f:[Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->a:I

    iput p4, p0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIILkotlin/jvm/internal/n;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private static final synthetic a()[Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 2

    const-class v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 1

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->f:[Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 4

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 p1, 0x3

    if-ne v0, p1, :cond_14

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_24

    :cond_14
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1

    :cond_1a
    if-eqz p1, :cond_1f

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_24

    :cond_1f
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_24

    :cond_22
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_24
    return-object p1
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->a:I

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->b:I

    return v0
.end method
