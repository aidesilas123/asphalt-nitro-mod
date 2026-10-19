###### Class androidx.recyclerview.R (androidx.recyclerview.R)
.class public final Landroidx/recyclerview/R;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/R$attr;,
        Landroidx/recyclerview/R$dimen;,
        Landroidx/recyclerview/R$id;,
        Landroidx/recyclerview/R$styleable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.recyclerview.R.attr (androidx.recyclerview.R$attr)
.class public final Landroidx/recyclerview/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final fastScrollEnabled:I = 0x7f0401ec

.field public static final fastScrollHorizontalThumbDrawable:I = 0x7f0401ed

.field public static final fastScrollHorizontalTrackDrawable:I = 0x7f0401ee

.field public static final fastScrollVerticalThumbDrawable:I = 0x7f0401ef

.field public static final fastScrollVerticalTrackDrawable:I = 0x7f0401f0

.field public static final layoutManager:I = 0x7f040287

.field public static final recyclerViewStyle:I = 0x7f0403a8

.field public static final reverseLayout:I = 0x7f0403ad

.field public static final spanCount:I = 0x7f0403e2

.field public static final stackFromEnd:I = 0x7f0403f1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.recyclerview.R.dimen (androidx.recyclerview.R$dimen)
.class public final Landroidx/recyclerview/R$dimen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final fastscroll_default_thickness:I = 0x7f070114

.field public static final fastscroll_margin:I = 0x7f070115

.field public static final fastscroll_minimum_range:I = 0x7f070116

.field public static final item_touch_helper_max_drag_scroll_per_frame:I = 0x7f070158

.field public static final item_touch_helper_swipe_escape_max_velocity:I = 0x7f070159

.field public static final item_touch_helper_swipe_escape_velocity:I = 0x7f07015a


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.recyclerview.R.id (androidx.recyclerview.R$id)
.class public final Landroidx/recyclerview/R$id;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final item_touch_helper_previous_elevation:I = 0x7f0a0256


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class androidx.recyclerview.R.styleable (androidx.recyclerview.R$styleable)
.class public final Landroidx/recyclerview/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_clipToPadding:I = 0x1

.field public static final RecyclerView_android_descendantFocusability:I = 0x2

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static final RecyclerView_layoutManager:I = 0x8

.field public static final RecyclerView_reverseLayout:I = 0x9

.field public static final RecyclerView_spanCount:I = 0xa

.field public static final RecyclerView_stackFromEnd:I = 0xb


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    return-void

    :array_a
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f0401ec
        0x7f0401ed
        0x7f0401ee
        0x7f0401ef
        0x7f0401f0
        0x7f040287
        0x7f0403ad
        0x7f0403e2
        0x7f0403f1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
