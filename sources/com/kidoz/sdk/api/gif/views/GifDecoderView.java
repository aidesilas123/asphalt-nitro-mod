package com.kidoz.sdk.api.gif.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.ImageView;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.gif.decoder.GifDecoder;
import java.io.InputStream;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class GifDecoderView extends ImageView {
    private static final int BACKGROUND_COLOR = 0;
    private Context mContext;
    private GifDecoder mGifDecoder;
    private Handler mHandler;
    private boolean mIsPaused;
    private AnimationThread mLastAnimationThread;
    private Bitmap mTmpBitmap;
    private Runnable mUpdateResults;

    class AnimationThread extends Thread {
        private boolean mRequestStop;

        public AnimationThread() {
            super(new Runnable() { // from class: com.kidoz.sdk.api.gif.views.GifDecoderView.AnimationThread.1
                @Override // java.lang.Runnable
                public void run() {
                    int frameCount = gifDecoderView.mGifDecoder.getFrameCount();
                    int loopCount = gifDecoderView.mGifDecoder.getLoopCount();
                    UUID.randomUUID().toString();
                    int i = 0;
                    do {
                        if (!gifDecoderView.mIsPaused) {
                            for (int i2 = 0; i2 < frameCount; i2++) {
                                try {
                                    GifDecoderView gifDecoderView = gifDecoderView;
                                    gifDecoderView.mTmpBitmap = gifDecoderView.mGifDecoder.getFrame(i2);
                                } catch (ArrayIndexOutOfBoundsException e2) {
                                    Log.d("", "GifDecoderView | exception " + e2.getLocalizedMessage());
                                    SDKLogger.printErrorLog(e2.getLocalizedMessage());
                                }
                                int delay = gifDecoderView.mGifDecoder.getDelay(i2);
                                if (gifDecoderView.mHandler != null && gifDecoderView.mUpdateResults != null) {
                                    gifDecoderView.mHandler.post(gifDecoderView.mUpdateResults);
                                }
                                try {
                                    Thread.sleep(delay);
                                } catch (InterruptedException e3) {
                                    Log.d("", "GifDecoderView | exception " + e3.getLocalizedMessage());
                                    SDKLogger.printErrorLog(e3.getLocalizedMessage());
                                }
                            }
                            if (loopCount != 0) {
                                i++;
                            }
                        }
                        if (((AnimationThread) Thread.currentThread()).mRequestStop) {
                            return;
                        }
                    } while (i <= loopCount);
                }
            });
            this.mRequestStop = false;
        }

        public void requestStop() {
            this.mRequestStop = true;
        }
    }

    public interface IGifDecoderViewCallback {
        void gifDecoderViewReady();
    }

    class InitGifDecoderRunnable implements Runnable {
        private IGifDecoderViewCallback mIGifDecoderViewCallback;
        private InputStream mInputStream;

        public InitGifDecoderRunnable(IGifDecoderViewCallback iGifDecoderViewCallback, InputStream inputStream) {
            this.mIGifDecoderViewCallback = iGifDecoderViewCallback;
            this.mInputStream = inputStream;
        }

        @Override // java.lang.Runnable
        public void run() {
            GifDecoderView.this.initGifDecoder(this.mInputStream);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.kidoz.sdk.api.gif.views.GifDecoderView.InitGifDecoderRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    GifDecoderView.this.initUiUpdateMechanism();
                    InitGifDecoderRunnable.this.mIGifDecoderViewCallback.gifDecoderViewReady();
                }
            });
        }
    }

    public GifDecoderView(Context context, InputStream inputStream) {
        super(context);
        this.mIsPaused = false;
        setBackgroundColor(0);
        initGifDecoder(inputStream);
        initUiUpdateMechanism();
    }

    public GifDecoderView(Context context, InputStream inputStream, IGifDecoderViewCallback iGifDecoderViewCallback) {
        super(context);
        this.mIsPaused = false;
        this.mContext = context;
        setBackgroundColor(0);
        new Thread(new InitGifDecoderRunnable(iGifDecoderViewCallback, inputStream)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initGifDecoder(InputStream inputStream) {
        GifDecoder gifDecoder = new GifDecoder();
        this.mGifDecoder = gifDecoder;
        gifDecoder.read(inputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initUiUpdateMechanism() {
        this.mHandler = new Handler();
        this.mUpdateResults = new Runnable() { // from class: com.kidoz.sdk.api.gif.views.GifDecoderView.1
            @Override // java.lang.Runnable
            public void run() {
                if (GifDecoderView.this.mTmpBitmap == null || GifDecoderView.this.mTmpBitmap.isRecycled()) {
                    return;
                }
                GifDecoderView gifDecoderView = GifDecoderView.this;
                gifDecoderView.setImageBitmap(gifDecoderView.mTmpBitmap);
            }
        };
    }

    public synchronized void clean() {
        Log.d("", "GifDecoderView | clean");
        AnimationThread animationThread = this.mLastAnimationThread;
        if (animationThread != null) {
            animationThread.requestStop();
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mUpdateResults);
        }
        Bitmap bitmap = this.mTmpBitmap;
        if (bitmap != null) {
            bitmap.recycle();
        }
    }

    public synchronized boolean isPlaying() {
        if (this.mLastAnimationThread == null) {
            return false;
        }
        return !r0.mRequestStop;
    }

    public synchronized boolean isVisible() {
        return getVisibility() == 0;
    }

    public synchronized void pause() {
        Log.d("", "GifDecoderView | pause");
        this.mIsPaused = true;
    }

    public synchronized void resume() {
        Log.d("", "GifDecoderView | resume");
        this.mIsPaused = false;
    }

    public synchronized void start() {
        if (this.mGifDecoder != null) {
            AnimationThread animationThread = this.mLastAnimationThread;
            if (animationThread != null) {
                animationThread.requestStop();
            }
            AnimationThread animationThread2 = new AnimationThread();
            this.mLastAnimationThread = animationThread2;
            animationThread2.start();
        }
    }

    public synchronized void stop() {
        AnimationThread animationThread = this.mLastAnimationThread;
        if (animationThread != null) {
            animationThread.requestStop();
        }
    }
}
