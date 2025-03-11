import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/emotion_slider_cubit.dart';

class EmotionSlider extends StatelessWidget {
  final BoxConstraints constraints;
  bool isSliderDisabled;

  EmotionSlider(this.constraints, {Key? key, this.isSliderDisabled = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmotionSliderCubit, dynamic>(
      builder: (context, state) => Row(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color.fromARGB(255, 177, 14, 2),
                  Colors.red,
                  Colors.yellow,
                  Colors.green,
                  Color.fromARGB(255, 0, 180, 6)
                ],
                stops: [0.0, 0.25, 0.5, 0.75, 1.0],
              ).createShader(bounds);
            },
            child: SizedBox(
              width: constraints.maxWidth * 0.9,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Colors.grey.shade300,
                  thumbColor: Colors.white,
                  overlayColor: Colors.grey.withOpacity(0.3),
                  trackHeight: 10.0,
                ),
                child: AbsorbPointer(
                  absorbing: isSliderDisabled,
                  child: Slider(
                    value: state,
                    onChanged: (newValue) {
                      context
                          .read<EmotionSliderCubit>()
                          .updateSliderValue(newValue);
                    },
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(90),
              border: Border.all(),
            ),
            child: getCurrentIcon(state),
          )
        ],
      ),
    );
  }

  Color _getCurrentColor(double state) {
    if (state < 0.5) {
      return Color.lerp(Colors.red, Colors.yellow, state * 2)!;
    } else {
      return Color.lerp(Colors.yellow, Colors.green, (state - 0.5) * 2)!;
    }
  }

  Icon getCurrentIcon(double state) {
    if (state < 0.15) {
      return Icon(Icons.sentiment_very_dissatisfied_outlined,
          color: _getCurrentColor(state));
    } else if (state >= 0.15 && state < 0.45) {
      return Icon(Icons.sentiment_dissatisfied_outlined,
          color: _getCurrentColor(state));
    } else if (state >= 0.45 && state < 0.65) {
      return Icon(Icons.sentiment_neutral_outlined,
          color: _getCurrentColor(state));
    } else if (state >= 0.65 && state < 0.85) {
      return Icon(Icons.sentiment_satisfied_alt_outlined,
          color: _getCurrentColor(state));
    } else {
      return Icon(Icons.sentiment_very_satisfied_outlined,
          color: _getCurrentColor(state));
    }
  }
}