###### Class com.google.firebase.components.k (com.google.firebase.components.k)
.class public final synthetic Lcom/google/firebase/components/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# static fields
.field public static final synthetic a:Lcom/google/firebase/components/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/components/k;

    invoke-direct {v0}, Lcom/google/firebase/components/k;-><init>()V

    sput-object v0, Lcom/google/firebase/components/k;->a:Lcom/google/firebase/components/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/firebase/components/OptionalProvider;->c()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
