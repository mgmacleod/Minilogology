inlets = 1;
outlets = 2;

var dump_index = 0;

function list(l) {
    post("Received dump");
    post();

    function get_ith(list, i){ // i == 20
        var j = i % 7; // j = 6
        var n = Math.floor(i / 7.0); // n = 2
        var b7 = (list[8*n] >> j) & 1; // b7 
        var b6_to_0 = list[i + n + 1]; // 8 * n + j + 1
        var val = (b7 << 7) | b6_to_0;
        return val;
    }
    function convertRange( value, inMin, inMax, outMin, outMax ) { 
        return ( value - inMin ) * ( outMax - outMin ) / ( inMax - inMin ) + outMin;
    }

    function send_1023_value_to_cc(value, cc) {
        outlet(0, cc);
        outlet(1, convertRange(value, 0, 1023, 0, 127));
    }

    function send_3_value_to_cc(value, cc) {
        outlet(0, cc);
        switch (value) {
            case 0:
                outlet(1, 0);
                break;
            case 1:
                outlet(1, 64);
                break;
            case 2:
                outlet(1, 127);
                break;
            default: 
                post("Invalid value for CC: " + cc + " value: " + value);
                post();
        } 
    }

    function send_4_value_to_cc(value, cc) {
        outlet(0, cc);
        switch (value) {
            case 0:
                outlet(1, 0);
                break;
            case 1:
                outlet(1, 42);
                break;
            case 2:
                outlet(1, 84);
                break;
            case 4:
                outlet(1, 127);
                break;
            default: 
                post("Invalid value for CC: " + cc + "value: " + value);
                post();
        } 
    }

    function send_2_value_to_cc(value, cc) {
        outlet(0, cc);
        switch (value) {
            case 0:
                outlet(1, 0);
                break;
            case 1:
                outlet(1, 127);
                break;
            default: 
                post("Invalid value for CC: " + cc + "value: " + value);
                post();
        } 
    }



    var vco_1_pitch             = (get_ith(arguments, 20) << 2) | ((get_ith(arguments, 52) >> 0) & 3);
    var vco_1_shape             = (get_ith(arguments, 21) << 2) | ((get_ith(arguments, 52) >> 2) & 3);
    var vco_2_pitch             = (get_ith(arguments, 22) << 2) | ((get_ith(arguments, 53) >> 0) & 3);
    var vco_2_shape             = (get_ith(arguments, 23) << 2) | ((get_ith(arguments, 53) >> 2) & 3);
    var cross_mod_depth         = (get_ith(arguments, 24) << 2) | ((get_ith(arguments, 54) >> 0) & 3);
    var vco_2_pitch_eg_int      = (get_ith(arguments, 25) << 2) | ((get_ith(arguments, 54) >> 2) & 3);
    var vco_1_level             = (get_ith(arguments, 26) << 2) | ((get_ith(arguments, 54) >> 4) & 3);
    var vco_2_level             = (get_ith(arguments, 27) << 2) | ((get_ith(arguments, 54) >> 6) & 3);
    var noise_level             = (get_ith(arguments, 28) << 2) | ((get_ith(arguments, 55) >> 2) & 3);
    var cutoff                  = (get_ith(arguments, 29) << 2) | ((get_ith(arguments, 55) >> 4) & 3);
    var resonance               = (get_ith(arguments, 30) << 2) | ((get_ith(arguments, 55) >> 6) & 3);
    var cutoff_eg_int           = (get_ith(arguments, 31) << 2) | ((get_ith(arguments, 56) >> 0) & 3);
    var amp_eg_attack           = (get_ith(arguments, 34) << 2) | ((get_ith(arguments, 57) >> 0) & 3);
    var amp_eg_decay            = (get_ith(arguments, 35) << 2) | ((get_ith(arguments, 57) >> 2) & 3);
    var amp_eg_sustain          = (get_ith(arguments, 36) << 2) | ((get_ith(arguments, 57) >> 4) & 3);
    var amp_eg_release          = (get_ith(arguments, 37) << 2) | ((get_ith(arguments, 57) >> 6) & 3);
    var eg_attack               = (get_ith(arguments, 38) << 2) | ((get_ith(arguments, 58) >> 0) & 3);
    var eg_decay                = (get_ith(arguments, 39) << 2) | ((get_ith(arguments, 58) >> 2) & 3);
    var eg_sustain              = (get_ith(arguments, 40) << 2) | ((get_ith(arguments, 58) >> 4) & 3);
    var eg_release              = (get_ith(arguments, 41) << 2) | ((get_ith(arguments, 59) >> 6) & 3);
    var lfo_rate                = (get_ith(arguments, 42) << 2) | ((get_ith(arguments, 60) >> 0) & 3);
    var lfo_int                 = (get_ith(arguments, 43) << 2) | ((get_ith(arguments, 60) >> 2) & 3);
    var delay_hi_pass_cutoff    = (get_ith(arguments, 49) << 2) | ((get_ith(arguments, 62) >> 2) & 3);
    var delay_time              = (get_ith(arguments, 50) << 2) | ((get_ith(arguments, 62) >> 4) & 3);
    var delay_feedback          = (get_ith(arguments, 51) << 2) | ((get_ith(arguments, 62) >> 6) & 3);
    var voice_mode_depth        = (get_ith(arguments, 70) << 2) | ((get_ith(arguments, 64) >> 4) & 3);

    var lfo_target              = (get_ith(arguments, 59) >> 4) & 3;
    var lfo_eg                  = (get_ith(arguments, 59) >> 6) & 3;
    var lfo_wave                = (get_ith(arguments, 60) >> 0) & 3;
    var delay_output_routing    = (get_ith(arguments, 60) >> 6) & 3;

    var voice_mode              = (get_ith(arguments, 64) >> 0) & 7;
    var bend_range_up           = (get_ith(arguments, 66) >> 0) & 15;
    var bend_range_down         = (get_ith(arguments, 66) >> 4) & 15;

    var lfo_key_sync            = (get_ith(arguments, 69) >> 0) & 1;
    var lfo_bpm_sync            = (get_ith(arguments, 69) >> 1) & 1;
    var lfo_voice_sync          = (get_ith(arguments, 69) >> 2) & 1;
    var portament_bpm           = (get_ith(arguments, 69) >> 3) & 1;
    var portament_mode          = (get_ith(arguments, 69) >> 4) & 1;

    var keyboard_octave         = (get_ith(arguments, 73) >> 0) & 3;
    var vco_1_octave            = (get_ith(arguments, 52) >> 4) & 3;
    var vco_2_octave            = (get_ith(arguments, 53) >> 4) & 3;
    var vco_1_wave              = (get_ith(arguments, 52) >> 6) & 3;
    var vco_2_wave              = (get_ith(arguments, 53) >> 6) & 3;

    var sync                    = (get_ith(arguments, 55) >> 0) & 1;
    var ring                    = (get_ith(arguments, 55) >> 1) & 1;

    var cutoff_velocity         = (get_ith(arguments, 56) >> 2) & 3;
    var cutoff_type             = (get_ith(arguments, 56) >> 6) & 1;
    var cutoff_keyboard_track   = (get_ith(arguments, 56) >> 4) & 3;

    var dump_name = "dump" + dump_index;
    var dict = new Dict(dump_name);

    dict.set("vco_1_pitch", vco_1_pitch);
    dict.set("vco_1_shape", vco_1_shape);
    dict.set("vco_2_pitch", vco_2_pitch);
    dict.set("vco_2_shape", vco_2_shape);
    dict.set("cross_mod_depth", cross_mod_depth);
    dict.set("vco_2_pitch_eg_int", vco_2_pitch_eg_int);
    dict.set("vco_1_level", vco_1_level);
    dict.set("vco_2_level", vco_2_level);
    dict.set("noise_level", noise_level);
    dict.set("cutoff", cutoff);
    dict.set("resonance", resonance);
    dict.set("cutoff_eg_int", cutoff_eg_int);
    dict.set("amp_eg_attack", amp_eg_attack);
    dict.set("amp_eg_decay", amp_eg_decay);
    dict.set("amp_eg_sustain", amp_eg_sustain);
    dict.set("amp_eg_release", amp_eg_release);
    dict.set("eg_attack", eg_attack);
    dict.set("eg_decay", eg_decay);
    dict.set("eg_sustain", eg_sustain);
    dict.set("eg_release", eg_release);
    dict.set("lfo_rate", lfo_rate);
    dict.set("lfo_int", lfo_int);
    dict.set("delay_hi_pass_cutoff", delay_hi_pass_cutoff);
    dict.set("delay_time", delay_time);
    dict.set("delay_feedback", delay_feedback);
    dict.set("voice_mode_depth", voice_mode_depth);
    dict.set("lfo_target", lfo_target);
    dict.set("lfo_eg", lfo_eg);
    dict.set("lfo_wave", lfo_wave);
    dict.set("delay_output_routing", delay_output_routing);
    dict.set("voice_mode", voice_mode);
    dict.set("bend_range_up", bend_range_up);
    dict.set("bend_range_down", bend_range_down);
    dict.set("lfo_key_sync", lfo_key_sync);
    dict.set("lfo_bpm_sync", lfo_bpm_sync);
    dict.set("lfo_voice_sync", lfo_voice_sync);
    dict.set("portament_bpm", portament_bpm);
    dict.set("portament_mode", portament_mode);
    dict.set("keyboard_octave", keyboard_octave);
    dict.set("vco_1_octave", vco_1_octave);
    dict.set("vco_2_octave", vco_2_octave);
    dict.set("vco_1_wave", vco_1_wave);
    dict.set("vco_2_wave", vco_2_wave);
    dict.set("sync", sync);
    dict.set("ring", ring);
    dict.set("cutoff_velocity", cutoff_velocity);
    dict.set("cutoff_keyboard_track", cutoff_keyboard_track);
    dict.set("cutoff_type", cutoff_type);

    dump_index = (dump_index + 1) % 32;

    send_1023_value_to_cc(amp_eg_attack, 16);
    send_1023_value_to_cc(amp_eg_decay, 17);
    send_1023_value_to_cc(amp_eg_sustain, 18);
    send_1023_value_to_cc(amp_eg_release, 19);
    send_1023_value_to_cc(eg_attack, 20);
    send_1023_value_to_cc(eg_decay, 21);
    send_1023_value_to_cc(eg_sustain, 22);
    send_1023_value_to_cc(eg_release, 23);
    send_1023_value_to_cc(lfo_rate, 24);
    send_1023_value_to_cc(lfo_int, 26);
    send_1023_value_to_cc(voice_mode_depth, 27);
    send_1023_value_to_cc(delay_hi_pass_cutoff, 29);
    send_1023_value_to_cc(delay_time, 30);
    send_1023_value_to_cc(delay_feedback, 31);
    send_1023_value_to_cc(noise_level, 33);
    send_1023_value_to_cc(vco_1_pitch, 34);
    send_1023_value_to_cc(vco_2_pitch, 35);
    send_1023_value_to_cc(vco_1_shape, 36);
    send_1023_value_to_cc(vco_2_shape, 37);
    send_1023_value_to_cc(vco_1_level, 39);
    send_1023_value_to_cc(vco_2_level, 40);
    send_1023_value_to_cc(cross_mod_depth, 41);
    send_1023_value_to_cc(vco_2_pitch_eg_int, 42);
    send_1023_value_to_cc(cutoff, 43);
    send_1023_value_to_cc(resonance, 44);
    send_1023_value_to_cc(cutoff_eg_int, 45);
    
    send_3_value_to_cc(vco_1_wave, 50);
    send_3_value_to_cc(vco_2_wave, 51);
    send_3_value_to_cc(lfo_target, 56);
    send_3_value_to_cc(lfo_eg, 57);
    send_3_value_to_cc(lfo_wave, 58);
    send_3_value_to_cc(cutoff_velocity, 82);
    send_3_value_to_cc(cutoff_keyboard_track, 83);
    send_3_value_to_cc(delay_output_routing, 88);

    send_2_value_to_cc(sync, 80);
    send_2_value_to_cc(ring, 81);
    send_2_value_to_cc(cutoff_type, 84);

    send_4_value_to_cc(vco_1_octave, 48);
    send_4_value_to_cc(vco_2_octave, 49);

}

function bang() {
    post("bang")
}

function set(l) {
    post(arguments.length);
    if (arguments.length == 518) {
        post(arguments.slice(6));
    } else {
        post("Received unknown dump");
    }
}

/**
    MIDI DATA ( 1Set = 7bit x 8Byte )

                            j = 0               j = 1              j = 2               j =  3           j = 4              j = 5              j = 6         
      b7b7b7b7b7b7b7     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |   n = 0
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   7n+6,5,4,3,2,1,0         7n+0(0)               7n+01(01)              7n+2(2)               7n+3(3)               7n+4(4)               7n+5(5)               7n+6(6)

      b7b7b7b7b7b7b7     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |   n = 1
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   7n+6,5,4,3,2,1,0         7n+0(7)           7n+01(08)           7n+2(9)            7n+3(10)           7n+4(11)          7n+5(12)            7n+6(13)

      b7b7b7b7b7b7b7     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0     b6    ~     b0
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |  |0| | | | | | | |   n = 2
   +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
   7n+6,5,4,3,2,1,0         7n+0(14)            7n+1(15)          7n+2(16)          7n+3(17)           7n+4(18)           7n+5(19)           7n+6(20)

**/

function convertRange( value, inMin, inMax, outMin, outMax ) { 
    return ( value - inMin ) * ( outMax - outMin ) / ( inMax - inMin ) + outMin;
}
