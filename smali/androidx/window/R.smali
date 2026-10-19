###### Class androidx.window.R (androidx.window.R)
.class public final Landroidx/window/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/R$attr;,
        Landroidx/window/R$id;,
        Landroidx/window/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.window.R.attr (androidx.window.R$attr)
.class public final Landroidx/window/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final activityAction:I = 0x7f040026

.field public static final activityName:I = 0x7f040028

.field public static final alwaysExpand:I = 0x7f04005f

.field public static final clearTop:I = 0x7f0400f4

.field public static final finishPrimaryWithSecondary:I = 0x7f0401f1

.field public static final finishSecondaryWithPrimary:I = 0x7f0401f2

.field public static final placeholderActivityName:I = 0x7f04037c

.field public static final primaryActivityName:I = 0x7f040396

.field public static final secondaryActivityAction:I = 0x7f0403bb

.field public static final secondaryActivityName:I = 0x7f0403bc

.field public static final splitLayoutDirection:I = 0x7f0403e6

.field public static final splitMinSmallestWidth:I = 0x7f0403e7

.field public static final splitMinWidth:I = 0x7f0403e8

.field public static final splitRatio:I = 0x7f0403e9


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.window.R.id (androidx.window.R$id)
.class public final Landroidx/window/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final androidx_window_activity_scope:I = 0x7f0a0094

.field public static final locale:I = 0x7f0a0280

.field public static final ltr:I = 0x7f0a0281

.field public static final rtl:I = 0x7f0a0393


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.window.R.styleable (androidx.window.R$styleable)
.class public final Landroidx/window/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActivityFilter:[I

.field public static final ActivityFilter_activityAction:I = 0x0

.field public static final ActivityFilter_activityName:I = 0x1

.field public static final ActivityRule:[I

.field public static final ActivityRule_alwaysExpand:I = 0x0

.field public static final SplitPairFilter:[I

.field public static final SplitPairFilter_primaryActivityName:I = 0x0

.field public static final SplitPairFilter_secondaryActivityAction:I = 0x1

.field public static final SplitPairFilter_secondaryActivityName:I = 0x2

.field public static final SplitPairRule:[I

.field public static final SplitPairRule_clearTop:I = 0x0

.field public static final SplitPairRule_finishPrimaryWithSecondary:I = 0x1

.field public static final SplitPairRule_finishSecondaryWithPrimary:I = 0x2

.field public static final SplitPairRule_splitLayoutDirection:I = 0x3

.field public static final SplitPairRule_splitMinSmallestWidth:I = 0x4

.field public static final SplitPairRule_splitMinWidth:I = 0x5

.field public static final SplitPairRule_splitRatio:I = 0x6

.field public static final SplitPlaceholderRule:[I

.field public static final SplitPlaceholderRule_placeholderActivityName:I = 0x0

.field public static final SplitPlaceholderRule_splitLayoutDirection:I = 0x1

.field public static final SplitPlaceholderRule_splitMinSmallestWidth:I = 0x2

.field public static final SplitPlaceholderRule_splitMinWidth:I = 0x3

.field public static final SplitPlaceholderRule_splitRatio:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Landroidx/window/R$styleable;->ActivityFilter:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04005f

    aput v2, v0, v1

    sput-object v0, Landroidx/window/R$styleable;->ActivityRule:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_34

    sput-object v0, Landroidx/window/R$styleable;->SplitPairFilter:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroidx/window/R$styleable;->SplitPairRule:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Landroidx/window/R$styleable;->SplitPlaceholderRule:[I

    return-void

    :array_2c
    .array-data 4
        0x7f040026
        0x7f040028
    .end array-data

    :array_34
    .array-data 4
        0x7f040396
        0x7f0403bb
        0x7f0403bc
    .end array-data

    :array_3e
    .array-data 4
        0x7f0400f4
        0x7f0401f1
        0x7f0401f2
        0x7f0403e6
        0x7f0403e7
        0x7f0403e8
        0x7f0403e9
    .end array-data

    :array_50
    .array-data 4
        0x7f04037c
        0x7f0403e6
        0x7f0403e7
        0x7f0403e8
        0x7f0403e9
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
