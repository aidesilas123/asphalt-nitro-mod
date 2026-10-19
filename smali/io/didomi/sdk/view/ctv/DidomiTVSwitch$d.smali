###### Class io.didomi.sdk.view.ctv.DidomiTVSwitch.d (io.didomi.sdk.view.ctv.DidomiTVSwitch$d)
.class public final synthetic Lio/didomi/sdk/view/ctv/DidomiTVSwitch$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/view/ctv/DidomiTVSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->values()[Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->d:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;->c:Lio/didomi/sdk/view/ctv/DidomiTVSwitch$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lio/didomi/sdk/view/ctv/DidomiTVSwitch$d;->a:[I

    return-void
.end method
