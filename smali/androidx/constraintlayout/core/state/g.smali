###### Class androidx.constraintlayout.core.state.g (androidx.constraintlayout.core.state.g)
.class public final synthetic Landroidx/constraintlayout/core/state/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;


# static fields
.field public static final synthetic a:Landroidx/constraintlayout/core/state/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/constraintlayout/core/state/g;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/g;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/g;->a:Landroidx/constraintlayout/core/state/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Landroidx/constraintlayout/core/state/Transition;->lambda$getInterpolator$5(F)F

    move-result p1

    return p1
.end method
