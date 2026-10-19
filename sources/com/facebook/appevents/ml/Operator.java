package com.facebook.appevents.ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Operator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Operator {
    public static final Operator INSTANCE = new Operator();

    private Operator() {
    }

    public static final void addmv(MTensor x, MTensor b) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(b, "b");
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            int shape3 = x.getShape(2);
            float[] data = x.getData();
            float[] data2 = b.getData();
            if (shape <= 0) {
                return;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (shape2 > 0) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3 + 1;
                        if (shape3 > 0) {
                            int i5 = 0;
                            while (true) {
                                int i6 = i5 + 1;
                                int i7 = (i * shape2 * shape3) + (i3 * shape3) + i5;
                                data[i7] = data[i7] + data2[i5];
                                if (i6 >= shape3) {
                                    break;
                                } else {
                                    i5 = i6;
                                }
                            }
                        }
                        if (i4 >= shape2) {
                            break;
                        } else {
                            i3 = i4;
                        }
                    }
                }
                if (i2 >= shape) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor concatenate(MTensor[] tensors) {
        int shape;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(tensors, "tensors");
            int shape2 = tensors[0].getShape(0);
            int length = tensors.length - 1;
            if (length >= 0) {
                int i = 0;
                shape = 0;
                while (true) {
                    int i2 = i + 1;
                    shape += tensors[i].getShape(1);
                    if (i2 > length) {
                        break;
                    }
                    i = i2;
                }
            } else {
                shape = 0;
            }
            MTensor mTensor = new MTensor(new int[]{shape2, shape});
            float[] data = mTensor.getData();
            if (shape2 > 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    int i5 = i3 * shape;
                    int length2 = tensors.length - 1;
                    if (length2 >= 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6 + 1;
                            float[] data2 = tensors[i6].getData();
                            int shape3 = tensors[i6].getShape(1);
                            System.arraycopy(data2, i3 * shape3, data, i5, shape3);
                            i5 += shape3;
                            if (i7 > length2) {
                                break;
                            }
                            i6 = i7;
                        }
                    }
                    if (i4 >= shape2) {
                        break;
                    }
                    i3 = i4;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor conv1D(MTensor x, MTensor w) {
        Class<Operator> cls;
        Class<Operator> cls2;
        MTensor mTensor;
        Class<Operator> cls3 = Operator.class;
        if (CrashShieldHandler.isObjectCrashing(cls3)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(w, "w");
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            int shape3 = x.getShape(2);
            int shape4 = w.getShape(0);
            int i = (shape2 - shape4) + 1;
            int shape5 = w.getShape(2);
            MTensor mTensor2 = new MTensor(new int[]{shape, i, shape5});
            float[] data = x.getData();
            float[] data2 = mTensor2.getData();
            float[] data3 = w.getData();
            if (shape <= 0) {
                return mTensor2;
            }
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (shape5 > 0) {
                    int i4 = 0;
                    while (true) {
                        int i5 = i4 + 1;
                        if (i > 0) {
                            int i6 = 0;
                            while (true) {
                                int i7 = i6 + 1;
                                float f2 = 0.0f;
                                if (shape4 > 0) {
                                    int i8 = 0;
                                    while (true) {
                                        cls2 = cls3;
                                        int i9 = i8 + 1;
                                        if (shape3 > 0) {
                                            int i10 = 0;
                                            while (true) {
                                                mTensor = mTensor2;
                                                int i11 = i10 + 1;
                                                try {
                                                    f2 += data[(shape2 * shape3 * i2) + ((i8 + i6) * shape3) + i10] * data3[(((i8 * shape3) + i10) * shape5) + i4];
                                                    if (i11 >= shape3) {
                                                        break;
                                                    }
                                                    i10 = i11;
                                                    mTensor2 = mTensor;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    cls = cls2;
                                                    CrashShieldHandler.handleThrowable(th, cls);
                                                    return null;
                                                }
                                            }
                                        } else {
                                            mTensor = mTensor2;
                                        }
                                        if (i9 >= shape4) {
                                            break;
                                        }
                                        i8 = i9;
                                        cls3 = cls2;
                                        mTensor2 = mTensor;
                                    }
                                } else {
                                    cls2 = cls3;
                                    mTensor = mTensor2;
                                }
                                data2[(i * shape5 * i2) + (i6 * shape5) + i4] = f2;
                                if (i7 >= i) {
                                    break;
                                }
                                i6 = i7;
                                cls3 = cls2;
                                mTensor2 = mTensor;
                            }
                        } else {
                            cls2 = cls3;
                            mTensor = mTensor2;
                        }
                        if (i5 >= shape5) {
                            break;
                        }
                        i4 = i5;
                        cls3 = cls2;
                        mTensor2 = mTensor;
                    }
                } else {
                    cls2 = cls3;
                    mTensor = mTensor2;
                }
                if (i3 >= shape) {
                    return mTensor;
                }
                i2 = i3;
                cls3 = cls2;
                mTensor2 = mTensor;
            }
        } catch (Throwable th2) {
            th = th2;
            cls = cls3;
        }
    }

    public static final MTensor dense(MTensor x, MTensor w, MTensor b) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(w, "w");
            Intrinsics.checkNotNullParameter(b, "b");
            int shape = x.getShape(0);
            int shape2 = b.getShape(0);
            MTensor mTensorMul = mul(x, w);
            float[] data = b.getData();
            float[] data2 = mTensorMul.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            int i5 = (i * shape2) + i3;
                            data2[i5] = data2[i5] + data[i3];
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensorMul;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor embedding(String[] texts, int i, MTensor w) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(texts, "texts");
            Intrinsics.checkNotNullParameter(w, "w");
            int length = texts.length;
            int shape = w.getShape(1);
            MTensor mTensor = new MTensor(new int[]{length, i, shape});
            float[] data = mTensor.getData();
            float[] data2 = w.getData();
            if (length > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    int[] iArrVectorize = Utils.INSTANCE.vectorize(texts[i2], i);
                    if (i > 0) {
                        int i4 = 0;
                        while (true) {
                            int i5 = i4 + 1;
                            System.arraycopy(data2, iArrVectorize[i4] * shape, data, (shape * i * i2) + (i4 * shape), shape);
                            if (i5 >= i) {
                                break;
                            }
                            i4 = i5;
                        }
                    }
                    if (i3 >= length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void flatten(MTensor x, int i) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            if (i >= x.getShapeSize()) {
                return;
            }
            int shapeSize = x.getShapeSize();
            int shape = 1;
            if (i < shapeSize) {
                int i2 = i;
                while (true) {
                    int i3 = i2 + 1;
                    shape *= x.getShape(i2);
                    if (i3 >= shapeSize) {
                        break;
                    } else {
                        i2 = i3;
                    }
                }
            }
            int[] iArr = new int[i + 1];
            int i4 = 0;
            if (i > 0) {
                while (true) {
                    int i5 = i4 + 1;
                    iArr[i4] = x.getShape(i4);
                    if (i5 >= i) {
                        break;
                    } else {
                        i4 = i5;
                    }
                }
            }
            iArr[i] = shape;
            x.reshape(iArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor maxPool1D(MTensor x, int i) {
        int i2;
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            int shape3 = x.getShape(2);
            int i3 = (shape2 - i) + 1;
            MTensor mTensor = new MTensor(new int[]{shape, i3, shape3});
            float[] data = x.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    if (shape3 > 0) {
                        int i6 = 0;
                        while (true) {
                            int i7 = i6 + 1;
                            if (i3 > 0) {
                                int i8 = 0;
                                while (true) {
                                    int i9 = i8 + 1;
                                    int i10 = i8 * shape3;
                                    int i11 = (i4 * i3 * shape3) + i10 + i6;
                                    int i12 = (i4 * shape2 * shape3) + i10 + i6;
                                    data2[i11] = Float.MIN_VALUE;
                                    if (i > 0) {
                                        int i13 = 0;
                                        while (true) {
                                            int i14 = i13 + 1;
                                            i2 = shape2;
                                            data2[i11] = Math.max(data2[i11], data[i12 + (i13 * shape3)]);
                                            if (i14 >= i) {
                                                break;
                                            }
                                            i13 = i14;
                                            shape2 = i2;
                                        }
                                    } else {
                                        i2 = shape2;
                                    }
                                    if (i9 >= i3) {
                                        break;
                                    }
                                    i8 = i9;
                                    shape2 = i2;
                                }
                            } else {
                                i2 = shape2;
                            }
                            if (i7 >= shape3) {
                                break;
                            }
                            i6 = i7;
                            shape2 = i2;
                        }
                    } else {
                        i2 = shape2;
                    }
                    if (i5 >= shape) {
                        break;
                    }
                    i4 = i5;
                    shape2 = i2;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor mul(MTensor x, MTensor w) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            Intrinsics.checkNotNullParameter(w, "w");
            int shape = x.getShape(0);
            int shape2 = w.getShape(0);
            int shape3 = w.getShape(1);
            MTensor mTensor = new MTensor(new int[]{shape, shape3});
            float[] data = x.getData();
            float[] data2 = w.getData();
            float[] data3 = mTensor.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape3 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            int i5 = (i * shape3) + i3;
                            data3[i5] = 0.0f;
                            if (shape2 > 0) {
                                int i6 = 0;
                                while (true) {
                                    int i7 = i6 + 1;
                                    data3[i5] = data3[i5] + (data[(i * shape2) + i6] * data2[(i6 * shape3) + i3]);
                                    if (i7 >= shape2) {
                                        break;
                                    }
                                    i6 = i7;
                                }
                            }
                            if (i4 >= shape3) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final void relu(MTensor x) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            float[] data = x.getData();
            int i = 0;
            int length = data.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                if (data[i] < 0.0f) {
                    data[i] = 0.0f;
                }
                if (i2 > length) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final void softmax(MTensor x) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            int i = 0;
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            float[] data = x.getData();
            if (shape <= 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                int i3 = i * shape2;
                int i4 = i3 + shape2;
                float f2 = Float.MIN_VALUE;
                float f3 = 0.0f;
                if (i3 < i4) {
                    int i5 = i3;
                    while (true) {
                        int i6 = i5 + 1;
                        if (data[i5] > f2) {
                            f2 = data[i5];
                        }
                        if (i6 >= i4) {
                            break;
                        } else {
                            i5 = i6;
                        }
                    }
                }
                if (i3 < i4) {
                    int i7 = i3;
                    while (true) {
                        int i8 = i7 + 1;
                        data[i7] = (float) Math.exp(data[i7] - f2);
                        f3 += data[i7];
                        if (i8 >= i4) {
                            break;
                        } else {
                            i7 = i8;
                        }
                    }
                }
                if (i3 < i4) {
                    while (true) {
                        int i9 = i3 + 1;
                        data[i3] = data[i3] / f3;
                        if (i9 >= i4) {
                            break;
                        } else {
                            i3 = i9;
                        }
                    }
                }
                if (i2 >= shape) {
                    return;
                } else {
                    i = i2;
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
        }
    }

    public static final MTensor transpose2D(MTensor x) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            MTensor mTensor = new MTensor(new int[]{shape2, shape});
            float[] data = x.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            data2[(i3 * shape) + i] = data[(i * shape2) + i3];
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }

    public static final MTensor transpose3D(MTensor x) {
        if (CrashShieldHandler.isObjectCrashing(Operator.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(x, "x");
            int shape = x.getShape(0);
            int shape2 = x.getShape(1);
            int shape3 = x.getShape(2);
            MTensor mTensor = new MTensor(new int[]{shape3, shape2, shape});
            float[] data = x.getData();
            float[] data2 = mTensor.getData();
            if (shape > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (shape2 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (shape3 > 0) {
                                int i5 = 0;
                                while (true) {
                                    int i6 = i5 + 1;
                                    data2[(i5 * shape * shape2) + (i3 * shape) + i] = data[(i * shape2 * shape3) + (i3 * shape3) + i5];
                                    if (i6 >= shape3) {
                                        break;
                                    }
                                    i5 = i6;
                                }
                            }
                            if (i4 >= shape2) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= shape) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Operator.class);
            return null;
        }
    }
}
