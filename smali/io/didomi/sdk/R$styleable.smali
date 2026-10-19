###### Class io.didomi.sdk.R.styleable (io.didomi.sdk.R$styleable)
.class public final Lio/didomi/sdk/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DidomiTVSwitch:[I

.field public static final DidomiTVSwitch_didomi_enabled:I = 0x0

.field public static final DidomiTVSwitch_didomi_state:I = 0x1

.field public static final DidomiToggle:[I

.field public static final DidomiToggle_didomi_enabled:I = 0x0

.field public static final DidomiToggle_didomi_has_middle_state:I = 0x1

.field public static final DidomiToggle_didomi_state:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lio/didomi/sdk/R$styleable;->DidomiTVSwitch:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lio/didomi/sdk/R$styleable;->DidomiToggle:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x7f040193
        0x7f040195
    .end array-data

    :array_1a
    .array-data 4
        0x7f040193
        0x7f040194
        0x7f040195
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
